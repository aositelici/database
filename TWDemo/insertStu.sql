USE studatabase;
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
