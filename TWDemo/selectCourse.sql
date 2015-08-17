SELECT a.name,b.name FROM student a,course b,stu_course c
WHERE c.studentId = a.studentId AND c.courseId = b.courseId AND (a.studentId BETWEEN 21 AND 30);
