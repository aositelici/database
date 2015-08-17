CREATE DATABASE studatabase;

USE studatabase;

CREATE TABLE class (
   classId INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
   name VARCHAR(10) NOT NULL
  );

CREATE TABLE schedule (
  scheduleId INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  studentId INT NOT NULL
 );

CREATE TABLE student (
  studentId INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  sex VARCHAR(6) NOT NULL CHECK (sex = 'male' or sex = 'famale'),
  name VARCHAR(10) NOT NULL,
  scheduleId INT NOT NULL,
  classId INT NOT NULL
);
CREATE TABLE course (
  courseId INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(10) NOT NULL,
  scheduleId INT NOT NULL
);

CREATE TABLE course_schedule (
  courseId INT NOT NULL,
  scheduleId INT NOT NULL
);

ALTER TABLE student ADD CONSTRAINT stu_schedule FOREIGN KEY (scheduleId) REFERENCES schedule(scheduleId);
ALTER TABLE student ADD CONSTRAINT stu_class FOREIGN KEY (classId) REFERENCES class(classId);
ALTER TABLE course ADD CONSTRAINT course_schedule FOREIGN KEY (scheduleId) REFERENCES schedule(scheduleId);
ALTER TABLE course_schedule ADD CONSTRAINT course_schedule1 FOREIGN KEY (scheduleId) REFERENCES schedule(scheduleId);
ALTER TABLE course_schedule ADD CONSTRAINT course_schedule2 FOREIGN KEY (courseId) REFERENCES course(courseId);

SHOW DATABASES;
