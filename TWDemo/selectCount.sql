USE studatabase;
DELIMITER //
CREATE PROCEDURE selectCount()

    SELECT class.name as "班级",count(student.classId) as "学生人数" FROM student,class  where class.classId = student.classId GROUP BY student.classId ;
    SELECT class.name as "班级",count(student.classId) as "男生人数" FROM student,class where  class.classId = student.classId and student.sex = 'male'  GROUP BY student.classId ;
    SELECT class.name as "班级",count(student.classId) as "女生人数" FROM student,class where student.sex = 'famale' and class.classId = student.classId  GROUP BY student.classId ;

//
DELIMITER ;
CALL selectCount();
DROP PROCEDURE selectCount;
