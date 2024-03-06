USE VNHSGE;
CREATE TEMPORARY TABLE Max_Block_Score AS (
    WITH RankedScores AS (
        SELECT 
            candidate_id,
            block_id,
            score,
            RANK() OVER (PARTITION BY candidate_id ORDER BY score DESC) AS score_rank
        FROM candidate_block
    )

    SELECT candidate_id, block_id, score
    FROM RankedScores
    WHERE score_rank = 1 and score > 0
);

/* Khoi Thi cao diem nhat*/
SELECT * FROM Max_Block_Score;

/* Mon Thi Chinh*/

SELECT cb.candidate_id, cs.subject_id, cs.score as subject_score
FROM Max_Block_Score cb
JOIN block_subject bs on cb.block_id = bs.block_id
JOIN candidate_subject cs on bs.subject_id = cs.subject_id and cb.candidate_id = cs.candidate_id
