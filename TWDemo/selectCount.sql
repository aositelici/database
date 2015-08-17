USE studatabase;
DELIMITER //
CREATE PROCEDURE selectCount()
BEGIN
  DECLARE j INT DEFAULT 1;
  WHILE j<6
    DO
    SELECT name FROM student WHERE classId=j;
    SELECT FOUND_ROWS();
    SELECT name FROM student WHERE classId=j AND sex='male';
    SELECT FOUND_ROWS();
    SELECT name FROM student WHERE classId=j AND sex='famale';
    SELECT FOUND_ROWS();
    SET j=j+1;
  END WHILE;
END;
//
DELIMITER ;
CALL selectCount();
DROP PROCEDURE selectCount;
