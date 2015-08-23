USE studatabase;
DELIMITER //
CREATE PROCEDURE selectCount()

    SELECT classId,count(classId) as count FROM student  GROUP BY classId ;
    SELECT classId,count(classId) as male_count FROM student where sex = 'male' GROUP BY classId ;
    SELECT classId,count(classId) as male_count FROM student where sex = 'famale' GROUP BY classId ;

//
DELIMITER ;
CALL selectCount();
DROP PROCEDURE selectCount;
