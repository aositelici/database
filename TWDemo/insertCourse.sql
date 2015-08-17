USE studatabase;
DELIMITER //
CREATE PROCEDURE insertCourse()
BEGIN
  DECLARE i INT DEFAULT 0;
  WHILE i<25
    DO
    INSERT INTO course
    (
      name
    )
    VALUES
    (
      concat('课程',i+1)
    );
    SET i=i+1;
  END WHILE;
END;
//
DELIMITER ;
CALL insertCourse();
DROP PROCEDURE insertCourse;
