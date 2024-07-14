# 1.[vnhsge-2018_zero.csv] Điểm trung bình của các môn có điểm = 0
SELECT 
    candidate_id, 
    ROUND(COALESCE(NULLIF(AVG(CASE WHEN score != 0 THEN score END), 0), 0), 2) AS avg_score,
    ROUND(COALESCE(NULLIF(AVG(score), 0), 0), 2) AS avg_score_all,
    MAX(CASE WHEN subject_id = 'Toan' THEN ROUND(score, 2) ELSE -1 END) AS Toan,
    MAX(CASE WHEN subject_id = 'Van' THEN ROUND(score, 2) ELSE -1 END) AS Van,
    MAX(CASE WHEN subject_id = 'Anh' THEN ROUND(score, 2) ELSE -1 END) AS Anh,
    MAX(CASE WHEN subject_id = 'Ly' THEN ROUND(score, 2) ELSE -1 END) AS Ly,
    MAX(CASE WHEN subject_id = 'Hoa' THEN ROUND(score, 2) ELSE -1 END) AS Hoa,
    MAX(CASE WHEN subject_id = 'Sinh' THEN ROUND(score, 2) ELSE -1 END) AS Sinh,
    MAX(CASE WHEN subject_id = 'Su' THEN ROUND(score, 2) ELSE -1 END) AS Su,
    MAX(CASE WHEN subject_id = 'Dia' THEN ROUND(score, 2) ELSE -1 END) AS Dia,
    MAX(CASE WHEN subject_id = 'GDCD' THEN ROUND(score, 2) ELSE -1 END) AS GDCD
FROM 
    candidate_subject
GROUP BY 
    candidate_id;

# 2.[vnhsge-2018_avg.csv] Mối quan hệ giữa điểm trung bình và chênh lệch điểm của nhóm thí sinh THPT
CREATE TEMPORARY TABLE IF NOT EXISTS Grad_Student AS (
	WITH sq AS (
		SELECT 
			candidate_id,
			COUNT(CASE WHEN subject_id IN ('Toan', 'Van', 'Anh') THEN 1 ELSE NULL END) AS count_bb,
			COUNT(CASE WHEN subject_id IN ('Ly', 'Hoa', 'Sinh') THEN 1 ELSE NULL END) AS count_khtn, 
			COUNT(CASE WHEN subject_id IN ('Su', 'Dia', 'GDCD') THEN 1 ELSE NULL END) AS count_khxh,
			AVG(CASE WHEN subject_id IN ('Toan', 'Anh', 'Van','Ly', 'Hoa', 'Sinh') THEN score ELSE NULL END) AS avg_score_G1,
			AVG(CASE WHEN subject_id IN ('Toan', 'Anh', 'Van','Su', 'Dia', 'GDCD') THEN score ELSE NULL END) AS avg_score_G2
		FROM candidate_subject
		WHERE score > 0
		GROUP BY candidate_id
	) 
SELECT candidate_id, round(GREATEST(avg_score_G1, avg_score_G2),2) AS avg_score,count_bb,count_khtn,count_khxh
FROM sq
WHERE count_bb + count_khtn = 6 or count_bb + count_khxh = 6
GROUP BY candidate_id);
SELECT 
    gs.candidate_id,
    avg_score,
    case 
		when min(count_khtn) = 3 and min(count_khxh) = 0 then 'KHTN'
        when min(count_khtn) = 0 and  min(count_khxh)  = 3 then 'KHXH'
        when min(count_khtn)= 3 and min(count_khxh) = 3 then 'Both'
	end as subject_group,
    count(case when cs.score >= 5 then 1 end) as count_5,
    Round(AVG(CASE WHEN is_chosen = 1 THEN cs.score END),2) AS avg_score_1,
    COUNT(CASE WHEN is_chosen = 1 THEN 1 END) AS count_score_1,
    Round(AVG(CASE WHEN is_chosen = 0 THEN cs.score END),2) AS avg_score_0,
    COUNT(CASE WHEN is_chosen = 0 THEN 1 END) AS count_score_0,
    Round(max(cs.score) - min(cs.score),2) as score_range
FROM 
    Grad_Student gs
LEFT JOIN 
    candidate_subject cs ON cs.candidate_id = gs.candidate_id
GROUP BY 
    gs.candidate_id, avg_score;

# 3.[vnhsge-2018_minmax.csv] Điểm khối thi cao nhất và điểm môn thi thấp nhất
select cs.candidate_id, round(min(case when cs.score > 0 then cs.score end),2) as min_subject_score, round(max(cb.score),2) as max_block_score
from candidate_subject cs
join block_subject bs on bs.subject_id = cs.subject_id
join candidate_block cb on cs.candidate_id = cb.candidate_id and cb.block_id = bs.block_id
right join Grad_Student gs on cb.candidate_id = gs.candidate_id
group by cs.candidate_id;

# 4. [vnhsge-2018_score_1/2.csv] Điểm môn thi
select * from candidate_subject;

# 5. [vnhsge-2018_block_score.csv] Điểm khối thi
select * from candidate_block where score_rank = 1;
