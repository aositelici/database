CREATE VIEW schedule AS SELECT stu_course.studentId AS studentId,student.name AS name,
  course.name AS course FROM student,stu_course,course WHERE
  stu_course.studentId = student.studentId AND stu_course.courseId = course.courseId;
SELECT * FROM  schedule ;
