#first create database 
create database Kapil;
use Kapil;

#create table into the database 

create table student(
studentid int auto_increment,
first_name varchar(20) not null,
last_name varchar(20) not null,
age int,
primary key(studentid)
);

select * from student;

#insert records in student
insert into student values(1,'Kapil','Shivnani',23),
(2,'Anuj','Singh',21),
(3,'Rahul','Kumar',20);

#create another table department

create table department(
student_id int auto_increment,
department_name varchar(20) not null,
foreign key(student_id) references student(studentid)
);

#insert records in department table
insert into department values(1,'Computer Science'),
(2,'Mechanical'),
(3,'Full Stack');

select * from student;
select * from department;

#renaming student_id to studentid
alter table department
rename column student_id to studentid;

desc department;

#create your own view
create view student_info as
select first_name,last_name,age from student inner join department
using(studentid);

select * from student_info;

#how to drop view 
drop view student_info;




