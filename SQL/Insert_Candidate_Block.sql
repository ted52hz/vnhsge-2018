SELECT cb.candidate_id, cb.block_id, cb.score
FROM Candidate_Block cb
JOIN (
    SELECT candidate_id, MAX(score) AS highest_score
    FROM Candidate_Block
    GROUP BY candidate_id
) max_scores ON cb.candidate_id = max_scores.candidate_id AND cb.score = max_scores.highest_score
order by score desc
limit 10;
