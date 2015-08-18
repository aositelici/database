USE studatabase;
DELIMITER //
CREATE PROCEDURE insertClass()
BEGIN
  DECLARE i INT DEFAULT 1;
  WHILE i<6
    DO
    INSERT INTO class
    (
      name
    )
    VALUES
    (
      concat('自09',i)
    );
    SET i=i+1;
  END WHILE;
END;
//
DELIMITER ;
CALL  insertClass();
DROP PROCEDURE  insertClass;


DELIMITER //
CREATE PROCEDURE insertStu()
BEGIN
  DECLARE j INT DEFAULT 0;
  WHILE j<50
    DO
    INSERT INTO student
    (
      sex,name,classId
    )
    VALUES
    (
      if(j%2,"male","famale"),
      concat('hello',j+1),
      floor(j/10)+1
    );
    SET j=j+1;
  END WHILE;
END;
//
DELIMITER ;
CALL insertStu();
DROP PROCEDURE insertStu;


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
