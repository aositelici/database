CREATE DATABASE IF NOT EXISTS studatabase DEFAULT CHARSET utf8 COLLATE utf8_general_ci;

USE studatabase;

CREATE TABLE class (
   classId INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
   name VARCHAR(50) NOT NULL
);

CREATE TABLE student (
  studentId INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  sex VARCHAR(10) NOT NULL CHECK (sex = 'male' or sex = 'famale'),
  name VARCHAR(50) NOT NULL,
  classId INT NOT NULL
);

CREATE TABLE course (
  courseId INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL

);

CREATE TABLE stu_course (
  studentId INT NOT NULL,
  courseId INT NOT NULL
);

ALTER TABLE student ADD CONSTRAINT stu_class FOREIGN KEY (classId) REFERENCES class(classId);
ALTER TABLE stu_course ADD CONSTRAINT stu_course1 FOREIGN KEY (studentId) REFERENCES student(studentId);
ALTER TABLE stu_course ADD CONSTRAINT stu_course2 FOREIGN KEY (courseId) REFERENCES course(courseId);

SHOW DATABASES;
