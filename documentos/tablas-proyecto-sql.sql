CREATE SCHEMA proyecto1;

USE proyecto1;

CREATE TABLE tabla_sql (
	index_sql INT NOT NULL,
    q10_part_1 VARCHAR(100),
    q10_part_2 VARCHAR(100),
    q10_part_3 VARCHAR(100),
    q10_part_4 VARCHAR(100),
    q10_part_5 VARCHAR(100),
    q10_part_6 VARCHAR(100),
    q10_part_7 VARCHAR(100),
    q10_part_8 VARCHAR(100),
    q10_part_9 VARCHAR(100),
    q10_part_10 VARCHAR(100),
    q10_part_11 VARCHAR(100),
    q10_part_12 VARCHAR(100),
    q10_part_13 VARCHAR(100),
    q10_part_14 VARCHAR(100),
    q10_part_15 VARCHAR(100),
    q10_part_16 VARCHAR(100),
    q10_other VARCHAR(100),
    d482xta VARCHAR(100),
    PRIMARY KEY (index_sql));
    
CREATE TABLE tabla_xml (
	index_xml INT NOT NULL,
    `time` VARCHAR(10),
    age VARCHAR(10),
    gender VARCHAR(10),
    index_sql INT NOT NULL,
    PRIMARY KEY (index_xml),
	CONSTRAINT `fk_tabla_xml_tabla_sql`
		FOREIGN KEY (index_sql)
        REFERENCES tabla_sql (index_sql) ON UPDATE CASCADE ON DELETE CASCADE);
        
CREATE TABLE tabla_txt (
	index_txt INT NOT NULL,
    index_sql INT NOT NULL,
    q3 VARCHAR(150),
    q4 VARCHAR(150),
    q5 VARCHAR(150),
    q6 VARCHAR(150),
    q7 VARCHAR(150),
    q8 VARCHAR(150),
    q9 VARCHAR(150),
    q11 VARCHAR(150),
    q12 VARCHAR(150),
    q13 VARCHAR(150),
    q14 VARCHAR(150),
    q15 VARCHAR(150),
    q16 VARCHAR(150),
    q17 VARCHAR(150),
    q20 VARCHAR(150),
    q21 VARCHAR(150),
    q22 VARCHAR(150),
    q23 VARCHAR(150),
    q24 VARCHAR(150),
    q25 VARCHAR(150),
    q26 VARCHAR(150),
    q32 VARCHAR(150),
    q33 VARCHAR(150),
    q34 VARCHAR(150),
    q35 VARCHAR(150),
    q41 VARCHAR(150),
    PRIMARY KEY (index_txt),
    CONSTRAINT `fk_tabla_txt_tabla_sql`
		FOREIGN KEY (index_sql)
        REFERENCES tabla_sql (index_sql) ON UPDATE CASCADE ON DELETE CASCADE);
        
        
        
        