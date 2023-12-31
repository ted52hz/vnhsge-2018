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
    WHERE score_rank = 1
);
