CREATE TABLE laptop_backup LIKE laptopdata;
INSERT INTO laptop_backup
SELECT * FROM laptopdata;




SELECT * FROM laptopdata;

ALTER TABLE laptopdata DROP COLUMN  `Unnamed: 0`;
select * from laptopdata ;
SELECT COUNT( *) FROM laptopdata;
SELECT DISTINCT Company  FROM laptopdata;

SELECT * FROM  laptopdata;

SELECT REPLACE (Ram, 'GB','') FROM laptopdata;

SELECT OpSys , 
 CASE
    WHEN OpSys LIKE '%mac%' Then 'macos'
    WHEN OpSys LIKE 'windows%' then 'windows'
    WHEN OpSys LIKE '%linux%' THEN 'linux'
    WHEN OpSys  = 'No OS' THEN 'N/A'
    ELSE 'other'
END as 'os_brand'
FROM laptopdata;





UPDATE laptopdata
SET OpSys = CASE
    WHEN OpSys LIKE '%mac%' THEN 'macos'
    WHEN OpSys LIKE 'windows%' THEN 'windowos'
    WHEN OpSys LIKE '%linux%' THEN 'linux'
    WHEN OpSys = 'No OS' THEN 'N/A'
    ELSE 'Other'
END
