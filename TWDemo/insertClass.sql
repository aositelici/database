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
