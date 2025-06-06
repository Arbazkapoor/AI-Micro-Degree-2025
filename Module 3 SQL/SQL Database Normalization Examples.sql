create database normal;
use normal;

create table Std_Enroll(
std_ID int,
Name Varchar(50),
CourseID int,
CourseName varchar(50),
InstructorID int,
InstructorName Varchar(50));
 
 insert into Std_Enroll(std_ID,Name,CourseID,CourseName,InstructorID,InstructorName)
 values(1,'sadvika',101,'AIPA',10,'Shailesh'),
 (2,'alli',102,'CSA',11,'Pramod Sir'),
 (3,'srujana',103,'CHNM',12,'Adharsh'),
 (4,'uma',104,'Drone',13,'Rakesh');
 drop table Std_Enroll;
 
 select*from Std_Enroll;
 
 -- 1NF
 create table Student1(
 StudentID int primary key,
 StudentName varchar(100));
 
 insert into Student1(StudentID,StudentName) values
 (1,'sadvika'),
 (2,'alli'),
 (3,'srujana'),
 (4,'uma');
 
select * from Student1;
 -- 2NF
 create table Course(
 CourseID int primary key,
 CourseName varchar(100),
 InstructorID int);
 
 
 insert into Course(CourseID,CourseName,InstructorID) values
 (101,'AIPA',10),
 (102,'CSA',11),
 (103,'CHNM',12),
 (104,'Drone',13);
 drop table Course;
 
 select * from student1;
 select * from Course;
 
 -- 3NF 
 
create table Admission(
StudentID int,
CourseID int,
primary key(StudentID,CourseID));
 
insert into Admission(StudentID,CourseID) values
(1,101),
(2,102),
(3,103),
(4,104);
 
 select * from Student1;
 Select * from Course;
 Select * from Admission;
 
 
-- BCNF

create table Student2(
StudentID int primary key,
StudentName varchar(50));

insert into Student2(StudentID,StudentName) values
(1,'sadvika'),
(2,'alli'),
(3,'srujana'),
(4,'uma'); 
 
 create table Instructors(
 InstructorID int primary key,
 InstructorName varchar(50));
 
 insert into Instructors(InstructorID,InstructorName) values
 (10,'shailesh'),
 (11,'Pramod Sir'),
 (12,'Adharsh'),
 (13,'Rakesh');
 drop table instructors;
 
create table Courses(
CourseID int primary key,
CourseName varchar(100),
InstructorID int,
foreign key(InstructorID) references Instructors(InstructorID));
 
 insert into Courses(CourseID,CourseName,InstructorID) values
 (101,'AIPA',10),
 (102,'CSA',11),
 (103,'CHNM',12),
 (104,'Drone',13);
 
 
 -- creating relationship between studentsId and courseID
 
 create table Admission1(
 StudentID int,
 CourseID int,
 primary key (StudentID,CourseID),
 foreign key (StudentID) references Student2(StudentID),
 foreign key(CourseID) references Courses(CourseID));
 
 insert into Admission1 (StudentID,CourseID) values
 (1,101),
 (2,102),
 (3,103),
 (4,104),
 (5,105);