SELECT * FROM student LIMIT 20,10;
SELECT * FROM course LIMIT 20,6;
SELECT * FROM stu_course LIMIT 20,10;

SELECT name FROM course WHERE courseId IN(SELECT courseId FROM stu_course WHERE studentId=1);
SELECT name FROM course WHERE courseId IN(SELECT courseId FROM stu_course WHERE studentId=2);
SELECT name FROM course WHERE courseId IN(SELECT courseId FROM stu_course WHERE studentId=3);
SELECT name FROM course WHERE courseId IN(SELECT courseId FROM stu_course WHERE studentId=4);
SELECT name FROM course WHERE courseId IN(SELECT courseId FROM stu_course WHERE studentId=5);
