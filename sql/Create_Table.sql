CREATE DATABASE IF NOT EXISTS VNHSGE;
USE VNHSGE;

CREATE TABLE IF NOT EXISTS Economic_region (
    er_code VARCHAR(2) PRIMARY KEY,
    region VARCHAR(50)
);


CREATE TABLE IF NOT EXISTS Province (
    province_code VARCHAR(2) PRIMARY KEY,
    province_name VARCHAR(50)
    FOREIGN KEY (er_code) REFERENCES Economic_region(er_code)
	
);

CREATE TABLE IF NOT EXISTS Candidate (
    candidate_id VARCHAR(8) PRIMARY KEY,
    province_code VARCHAR(2),
    FOREIGN KEY (province_code) REFERENCES Province(province_code)
);

CREATE TABLE IF NOT EXISTS Subject_info (
    subject_id  VARCHAR(10) PRIMARY KEY,
    subject_name VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS Candidate_Subject (
    candidate_id VARCHAR(8),
    subject_id VARCHAR(10) ,
    score FLOAT,
    PRIMARY KEY (candidate_id, subject_id),
    FOREIGN KEY (candidate_id) REFERENCES Candidate(candidate_id),
    FOREIGN KEY (subject_id) REFERENCES Subject_info(subject_id)
);

CREATE TABLE IF NOT EXISTS Block_info (
    block_id VARCHAR(3) PRIMARY KEY,
    block_name VARCHAR(50)
);


CREATE TABLE IF NOT EXISTS Block_Subject (
    block_id VARCHAR(3),
    subject_id VARCHAR(10) ,
    PRIMARY KEY (block_id, subject_id),
    FOREIGN KEY (block_id) REFERENCES Block_info(block_id),
    FOREIGN KEY (subject_id) REFERENCES Subject_info(subject_id)
);


CREATE TABLE IF NOT EXISTS Candidate_Block (
    candidate_id VARCHAR(8),
    block_id VARCHAR(4),
    score FLOAT,
    PRIMARY KEY (candidate_id, block_id),
    FOREIGN KEY (candidate_id) REFERENCES Candidate(candidate_id),
    FOREIGN KEY (block_id) REFERENCES Block_info(block_id)
);

