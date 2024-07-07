use vnhsge;
INSERT INTO Candidate_Block (candidate_id, block_id, score)
SELECT cs.candidate_id, bi.block_id, round(sum(cs.score),2)
FROM Candidate_Subject cs
JOIN Block_Subject bs ON cs.subject_id = bs.subject_id
JOIN Block_info bi ON bs.block_id = bi.block_id
WHERE  cs.score > 0
group by cs.candidate_id, bi.block_id
having count(cs.score) = 3;

alter table Candidate_block add column score_rank TINYINT;
ALTER TABLE candidate_subject ADD COLUMN is_chosen TINYINT DEFAULT 0;

CREATE TEMPORARY TABLE IF NOT EXISTS Highest_Score AS (
    WITH RankedScores AS (
        SELECT 
            candidate_id,
            block_id,
            score,
            RANK() OVER (PARTITION BY candidate_id ORDER BY score DESC) AS score_rank
        FROM candidate_block
    )
    SELECT candidate_id, block_id, score_rank
    FROM RankedScores
    WHERE score > 3
);
UPDATE Candidate_block AS A
JOIN Highest_Score AS B ON A.candidate_id = B.candidate_id AND A.block_id = B.block_id
SET A.score_rank = B.score_rank;

UPDATE candidate_subject as A
JOIN (
	select cs.candidate_id, cs.subject_id, score_rank from candidate_block cb 
	join block_subject bs on cb.block_id = bs.block_id 
	join candidate_subject cs on cs.subject_id = bs.subject_id and cb.candidate_id = cs.candidate_id
	where score_rank = 1) as B
ON A.candidate_id = B.candidate_id and A.subject_id = B.subject_id
SET A.is_chosen = B.score_rank;