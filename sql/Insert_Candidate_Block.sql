INSERT INTO Candidate_Block (candidate_id, block_id, score)
SELECT cs.candidate_id, bi.block_id, SUM(cs.score)
FROM Candidate_Subject cs
JOIN Block_Subject bs ON cs.subject_id = bs.subject_id
JOIN Block_info bi ON bs.block_id = bi.block_id
GROUP BY cs.candidate_id, bi.block_id;
