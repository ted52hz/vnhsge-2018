use vnhsge;

DELIMITER //

CREATE PROCEDURE GetHistBlock (IN block_id_name VARCHAR(4))
BEGIN
    SELECT FLOOR(score * 4)/4 AS rounded_score, COUNT(score) AS count_score
    FROM candidate_block
    WHERE block_id = block_id_name
    GROUP BY FLOOR(score * 4)/4 
    ORDER BY FLOOR(score * 4)/4 ASC;
END//

DELIMITER ;

DELIMITER //

CREATE PROCEDURE GetHistSubject (IN subject_id_name VARCHAR(4))
BEGIN
    SELECT FLOOR(score * 5)/5 AS rounded_score, COUNT(score) AS count_score
    FROM candidate_subject
    WHERE subject_id = subject_id_name
    GROUP BY FLOOR(score * 5)/5 
    ORDER BY FLOOR(score * 5)/5 ASC;
END//

DELIMITER ;

call GetHistBlock("A01") # A00,A01,B00,C00,D01
call GetHistSubject("Toan") # Toan,Ly,Hoa,Anh,Van,Sinh,Su,Dia,GDCD
