use vnhsge;
SELECT floor(score * 4)/4 AS rounded_score, count(score) AS sum_score
FROM candidate_block
WHERE block_id = 'C00'
GROUP BY floor(score * 4)/4 
ORDER BY floor(score * 4)/4 asc;
