-- 24/01/25

-- -- CREATE --
-- create database aipa;
-- use aipa;
-- drop database aipa;
-- use aipa;
-- create table students(
-- id int,
-- name varchar(50),
-- age int,
-- mobile varchar(10),
-- address varchar(100));

-- # mofiying the columns in tables 
-- alter table students rename column mobile to phone_no;
-- alter table students drop column age;
-- alter table students add age int;

-- # truncate- deleting the all rows without deleting the table
-- truncate table students;
-- # adding data into table
-- use aipa;
-- insert into students(id,name,phone_no,address,age) value(5,"sadvika",8332927800,"sangareddy",23),
-- (6,"alli",8332070800,"shankarpally",25),(7,"uma",9856321470,"ghatkesar",26),
-- (8,"valli",8974563210,"lb Nagar",17);

-- -- RETRIEVE --
-- # retrieving the data
-- select name,address from students where age<25;
-- # reading complete data from the table
-- select * from students;
-- # sorting the data in table 
-- select name from students order by age asc;
-- select name from students order by age desc;
-- select name, address from students where age=23;
-- select name, address from students where id=3;
-- select count(*) from students;

-- -- UPDATE  -- 
-- use aipa;
-- update students set address = "patancheru" where name = "alli" and id=2;

-- ------ UNDO CHANGES----

-- update students 
-- set address = "bangalore", age=24
-- where id=2;
-- start transaction;
-- update students set address = "andhra";

-- rollback;
-- commit;


-- -- DELETE --

-- delete from students where id=1;
-- delete from students where name="alli" and id=2;
-- delete from students where age=25;
-- delete from students where id in(2,4,6); 



-- *********************************************************************
-- 27/1/25

-- use aipa;
-- create table record (
-- age tinyint,
-- salary smallint
-- );

-- insert into record (age,salary) value(100,31000),(110,28000);
-- insert into record (age,salary) value(200,31000),(110,28000);
-- insert into record (age,salary) value(100,31000),(110,3535355);


-- use aipa;
-- create table r1 (
-- age tinyint,
-- salary float
-- );

-- insert into r1 (age, salary) value(100,28045.55), (110,27000);


-- use aipa;

-- create table r2 (
-- age tinyint,
-- salary double,
-- height real
-- );

-- insert into r2(age,salary,height) value(100, 28045.55, 5.7),(105, 25434, 5.10);

-- alter table r2 add column email varchar(10) after age;
-- alter table r2 modify column email varchar(20);
-- alter table r2 rename column email to Addemail;
-- alter table r2 add column Gender char(2) after height;
-- alter table r2 modify column Gender char(15);
-- alter table r2 rename column Addemail to Email;
-- insert into r2(email, Gender)
-- value ('daya@123gmail.com', 'Male');

-- alter table r2 add column Address tinytext after age;
-- alter table r2 
-- add column paragraph text,
-- add column book mediumtext,
-- add column Long_text longtext;

-- alter table r2 add column paragraph text after Address ;
-- alter table r2 add column book mediumtext after paragraph;
-- alter table r2 add column Long_text longtext after book;

-- insert into r2(paragraph, book,  Long_text)
-- value ('vagdfjwegriweugriwerggweyhusdgvfigtwefig', 'yutdutuydtauydguaytgaudtfuytrfwuytrfweyuydyreyergeryuwreyuyudgdsuydsgcgfsduyfguyffwuywfuyfy', 'yuqewtydtweiuwtquidygdfhjsdygsdftgyftftdgvdchdskuadfsyudastfgyutuyqoftweyuftqweuyftguiyqweftouiyewqtgfuyiwtgfuiyfgloiuyweftwoqueftgdsjahguftuyfg');

-- use aipa;
-- update r2
-- set address ="hyd", Email="abs@gmail.com", Gender="female", paragraph="hasgdjha", book="hghsgdjgshdgjhsg", long_text ="gsjgsjgsjhGSJhsgjHSGjhsgkjhsgkjhsgydtuydtuytuydtuytd" where age = 100;
-- set address ="mumbai", Email="abs@hotmail.com", Gender="male", paragraph="hasghdhjha", book="hghhyhdgsgdjgshdgjhsg", long_text ="gsjjsdhudgsjgsjhGSJhsgjHSGjhsgkjhsgkjhsgydtuydtuytuydtuytd" 
-- where height = 5.1;
-- set address ="jammu", Email="abishek@hotmail.com", Gender="female", paragraph="shasghdhjha", book="hghsshyhdgsgdjgshdgjhsg", long_text ="gsjjsdhssudgsjgsjhGSJhsgjHSGjhsgkjhsgkjhsgydtuydtuytuydtuytd" 
-- where salary =25434;
-- set address ="vizag", salary=45445, height=5.5, paragraph="sssgdhdhjha", book="yhdgsgdjgshdgjhsg", long_text ="udgsjgsjhGSJhsgjHSGjhsgkjhsgkjhsgydtuydtuytuydtuytd" 
-- where Gender= "male";

-- set age= 87, address ="vizag", salary=45445, height=5.5, paragraph="sssgdhdhjha", book="yhdgsgdjgshdgjhsg", long_text ="udgsjgsjhGSJhsgjHSGjhsgkjhsgkjhsgydtuydtuytuydtuytd" 
-- where Gender= "male";
-- set age= 56, address ="bangalore", Email="goddy@outlook.com,", salary=64745, height=5.3, Gender= "male" 
-- where paragraph="vagdfjwegriweugriwerggweyhusdgvfigtwefig"; 


-- *************************************************************************************************
-- ------TASK-----
-- 1) id (Primary Key, Auto-increment, Integer)
-- name (Variable length string up to 100 characters)
-- salary (Decimal number with up to 10 digits, 2 decimal places)
-- Address (Upto 100 characters)
-- Phone Number
-- Pincode

-- use daya;
-- create table employees (
-- id tinyint,
-- name tinytext,
-- salary decimal(15,2),
-- Address tinytext,
-- Phone int8,
-- pincode int
-- );

-- insert into employees(id, name, salary, Address, phone, pincode) 
-- value (1, "Rahul", 565757.55, "hyd", 9959658124, 502260), 
-- (2, "Dany", 123224, "chennai", 9959651124, 502262), 
-- (3, "edvin", 5657566, "oldcity", 9959228124, 512260),
-- (4, "parvati", 454757.55, "pune", 9945658124, 502000), 
-- (5, "nalini", 3337575.5, "vizag", 8859658124, 502123), 
-- (6, "adam", 444757.55, "delhi", 7859658124, 482260)
-- ; 

-- select name from employees
-- where id=1 and pincode=502260;

-- code2
-- use daya;
-- create table employees (
-- id tinyint AUTO_INCREMENT primary key,
-- name tinytext,
-- salary decimal(15,2),
-- Address tinytext,
-- Phone int8,
-- pincode int
-- );

-- 2) create a new table in the database.
-- insert data into a table.
-- retrieve data from a table.
-- modify existing records in a table.
-- remove records from a table.

-- alter table
-- insert into employees(name, salary, Address, phone, pincode) 
-- value ("Sampath", 45757.55, "rmt", 9959658124, 502260),
-- ("bob", 353563, "gyf", 463545445, 6565464)
-- ; 
--  drop table employees;
-- select * from employees
-- where id=1;


-- *************************************************************************************

-- 28/01/25
-- use aipa;

-- alter table record add column images blob;
-- alter table record modify images longblob;




--  inserting date and time in table(after break (11am))

-- use aipa;

-- alter table r1 
-- add column Date DATE,
-- add column DateTime DATETIME,
-- add column Timestmp timestamp,
-- add column Time Time,
-- add column Year Year;

-- insert into r1 (Date, DateTime, Timestmp, Time, Year) 
-- value('2025-02-01', '2025-02-24 12:06:30', current_timestamp, '12:07:45', '2025');

-- select * from r1;

-- show variables like 'secure_file_priv';

-- insert into r1(images) value(load_file('C:/ProgramData/MySQL/MySQL Server 9.2/Uploads/download.jpg'));

-- -- go to c drive --> programData --> MySQL --> MySQLserver --> Uploads (here upload or place the image, which you want to store into the Database ) 
-- -- --> Rightclick on uploads amd copy the Address i.e Copy Address. now paste the copied address into the Values(load_file())..


-- ----after lunch----

-- use sadvika;
-- create table sqlEmp(
-- Department Varchar(50),
-- name varchar(50),
-- Salary int);

-- insert into sqlEmp(Department,name,Salary)
-- values("MTS","Daya",50000),
-- ("Cashier","Ramesh",60000),
-- ("Training Officer","Aadil",70000),
-- ("Principal","Vamshi",100000),
-- ("Training Officer","Varun",60000);

-- select count(*) as Total_data from sqlEmp;
-- select sum(Salary) as total from sqlEmp;

-- select avg(Salary) as Average_Salary from sqlEmp;

-- select max(Salary) as Maximum_Salary from sqlEmp;
-- select min(Salary) as Minimum_Salary from sqlEmp;

-- select name,Salary,Department from sqlEmp where Salary=(select min(Salary) as Minimum_Salary from sqlEmp);

-- select count(name) as Training_Officer from sqlEmp where Department="Training Officer";
-- select Department, max(Salary) as max_Salary from sqlEmp group by department;

-- select Department, min(Salary) as min_Salary from sqlEmp group by department;

-- select Department, count(name) as Total_number from sqlemp group by Department;
-- select Department, name,Sum(Salary) as total_Salary from sqlEmp group by Department, name;

-- select Department, avg(Salary) as Avg_Sal from sqlEmp group by Department Having avg(Salary)>60000;

-- ******************************************************************************************************************************************
-- 29/01/205

-- create database ER;
-- use ER;

-- create table book(
-- B_id int primary key,
-- Title varchar(50),
-- Author varchar(50),
-- price varchar(10),
-- Publisher_name varchar(50),
-- foreign key (Publisher_name) references publisher(Name));
--  
-- create table publisher (
-- Name varchar(50) primary key,
-- Address varchar(50),
-- Phone Varchar(11));
--  
-- create table Library(
-- Name varchar(50),
-- Address varchar (100));
--  
-- create table Borrower(
-- Lib_card int primary key,
-- Name varchar(50),
-- Address varchar (100),
-- Phone varchar (11));
--  
-- create table copies(
-- Book_id int primary key,
-- Branch_id int,
-- No_of_copies int,
-- foreign key(Book_id) references book(B_id));
--  
--  
--  insert into publisher(name, Address, Phone)
--  values ('ajanta', 'hyderabad', 9122072184),
--  ('prem', 'pune', 9122372184),
--  ('mukesh', 'chennai', 9125072184);

-- insert into book(B_id, Title, Author, price, Publisher_name)
-- values(1, 'titanic', 'james', 100, 'david'),
-- (2, 'blue sea', 'sharma', 100, 'anand');

-- insert into library(name, address) 
-- values ('himalaya library', 'Qcity'),
-- ('nalanda', 'library', 'mumbai');

-- insert into Borrower(Lib_card, Name, Address, Phone)
-- value(12, 'ramesh', 'kothaguda', 9010151426),
-- (13, 'nikki', 'kajaguda', 9010151626);

-- insert into copies(Book_id, Branch_id, No_of_copies)
-- values(1,123,5),
-- (2,103,10);


-- select * from book;
--  
-- select b.B_id, b.Title, b.Author, b.price, p.Name, p.Address, p.Phone
-- from book b 
-- join publisher p on b.Publisher_name=p.Name;

-- select Publisher_name , count(*) as total_books 
-- from book
-- group by Publisher_name;

-- select * from Borrower;

-- select * from Borrower where Lib_card=13;



create database ER;
use ER;

create table publisher (
Name varchar(50) primary key,
Address varchar(50),
Phone varchar(11)
);

create table book(
B_id int primary key,
Title varchar(50),
Author varchar(50),
price DECIMAL(10, 2),  -- Changed price type
Publisher_name varchar(50),
foreign key (Publisher_name) references publisher(Name)
);

create table Library1(
Name varchar(50),
Address varchar(100)
);

create table Borrower(
    Lib_card int primary key,
    Name varchar(50),
    Address varchar(100),
    Phone varchar(11)
);

create table copies(
    Book_id int primary key,
    Branch_id int,
    No_of_copies int,
    foreign key(Book_id) references book(B_id)
);

insert into publisher(name, Address, Phone)
values 
('ajanta', 'hyderabad', '9122072184'),
('prem', 'pune', '9122372184'),
('mukesh', 'chennai', '9125072184');

insert into book(B_id, Title, Author, price, Publisher_name)
values
(1, 'titanic', 'james', 100.00, 'ajanta'),
(2, 'blue sea', 'sharma', 100.00, 'prem');

insert into library1(name, address) 
values
('himalaya library', 'Qcity'),
('nalanda library', 'mumbai');

insert into Borrower(Lib_card, Name, Address, Phone)
values
(12, 'ramesh', 'kothaguda', '9010151426'),
(13, 'nikki', 'kajaguda', '9010151626');

insert into copies(Book_id, Branch_id, No_of_copies)
values
(1, 123, 5),
(2, 103, 10);

select * from book;

select b.B_id, b.Title, b.Author, b.price, p.Name, p.Address, p.Phone
from book b 
join publisher p on b.Publisher_name = p.Name;

select Publisher_name, count(*) as total_books 
from book
group by Publisher_name;

select * from Borrower;

select * from Borrower where Lib_card = 13;




-- ***************************************************************************************************
-- 30/01/2025
-- Normalization in DBMS (Database Management System) 
-- Normalization is the process of organizing the attributes (columns) and relations (tables) in a database to minimize redundancy and dependency. The goal is to ensure that the database structure is efficient, avoids anomalies, and is logically consistent. This process typically involves dividing a large table into smaller, manageable ones while maintaining relationships between them.

-- create 1ND table

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
 -- drop table Course;
 
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
 select * from student2;
 create table Instructors(
 InstructorID int primary key,
 InstructorName varchar(50));
 
 insert into Instructors(InstructorID,InstructorName) values
 (10,'shailesh'),
 (11,'Pramod Sir'),
 (12,'Adharsh'),
 (13,'Rakesh');
 -- drop table instructors;
 select * from Instructors;
 
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
 
 insert into Admission1 (StudentID, CourseID) values
 (1,101),
 (2,102),
 (3,103),
 (4,104);
 
 
 select * FROM aDMISSION1;