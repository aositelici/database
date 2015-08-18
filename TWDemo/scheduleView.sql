SELECT stu.name,GROUP_CONCAT(c.name SEPARATOR ' | ') AS course
   FROM student stu
   LEFT JOIN stu_course sc
   ON stu.studentId = sc.studentId
   LEFT JOIN course c
   ON sc.courseId = c.courseId
   GROUP BY stu.studentId;
