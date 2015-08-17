CREATE DATABASE studatabase;

USE studatabase;

create table student (
  studentId INT(5) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  sex VARCHAR(6) NOT NULL CHECK (sex = 'male' or sex = 'famale'),
  name VARCHAR(10) NOT NULL,
  scheduleId INT(5) NOT NULL REFERENCES　schedule(scheduleId),
  classId INT(5) NOT NULL REFERENCES　class(classId)
 );

 create table class (
   classId INT(5) NOT NULL PRIMARY KEY AUTO_INCREMENT,
   name VARCHAR(10) NOT NULL
  );

create table schedule (
  scheduleId INT(5) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  studentId INT(5) NOT NULL REFERENCES　student(studentId)
 );

create table course (
  courseId INT(5) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(10) NOT NULL,
  scheduleId INT(5) NOT NULL REFERENCES　schedule(scheduleId)
);

create table course_schedule (
  courseId INT(5) NOT NULL REFERENCES　course(courseId),
  scheduleId INT(5) NOT NULL REFERENCES　schedule(scheduleId)
);

SHOW DATABASES;
