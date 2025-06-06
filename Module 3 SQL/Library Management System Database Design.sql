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
price DECIMAL(10, 2),  -- Changed price type to DECIMAL
Publisher_name varchar(50),
foreign key (Publisher_name) references publisher(Name)
);

create table Library(
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

-- Insert publishers
insert into publisher(Name, Address, Phone)
values 
('ajanta', 'hyderabad', '9122072184'),
('prem', 'pune', '9122372184'),
('mukesh', 'chennai', '9125072184');

-- Insert books with correct Publisher_name values
insert into book(B_id, Title, Author, price, Publisher_name)
values
(1, 'titanic', 'james', 100.00, 'ajanta'),
(2, 'blue sea', 'sharma', 100.00, 'prem');

-- Insert libraries
insert into library(Name, Address)
values
('himalaya library', 'Qcity'),
('nalanda library', 'mumbai');

-- Insert borrowers with corrected syntax
insert into Borrower(Lib_card, Name, Address, Phone)
values
(12, 'ramesh', 'kothaguda', '9010151426'),
(13, 'nikki', 'kajaguda', '9010151626');

-- Insert copies
insert into copies(Book_id, Branch_id, No_of_copies)
values
(1, 123, 5),
(2, 103, 10);

-- Retrieve all books
select * from book;

-- Retrieve books with publisher details
select b.B_id, b.Title, b.Author, b.price, p.Name, p.Address, p.Phone
from book b 
join publisher p on b.Publisher_name = p.Name;

-- Count total books per publisher
select Publisher_name, count(*) as total_books 
from book
group by Publisher_name;

-- Retrieve all borrowers
select * from Borrower;

-- Retrieve a specific borrower
select * from Borrower where Lib_card = 13;
