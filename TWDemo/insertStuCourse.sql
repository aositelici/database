USE studatabase;
DELIMITER //
CREATE PROCEDURE insertStuCourse()
BEGIN
  DECLARE i INT DEFAULT 0;
  DECLARE k INT DEFAULT 1;
  WHILE i<50*10
    DO
    INSERT INTO stu_course
    (
      studentId,courseId
    )
    VALUES
    (
      floor(i/10)+1,
      k

    );
    if k >24 then
      SET k=1;
    else
      SET k=k+1;
    end if;
    SET i=i+1;
  END WHILE;
END;
//
DELIMITER ;
CALL insertStuCourse();
DROP PROCEDURE insertStuCourse;
