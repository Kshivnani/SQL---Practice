#First Create Database Company
create database company;
use company;

#Create table Employee
create table employee(
empid int not null primary key auto_increment,
first_name varchar(20),
last_name varchar(20),
salary int,
joining_date datetime,
department_name varchar(20)
);
#Insert into employee table
insert into employee values
(0001,'Kapil','Shivnani',80000,'14-09-15 09.00.00','Development'),
(0002,'Nikita','Jain',70000,'14-11-09 09.00.00','Development'),
(0003,'Rahul','Kumar',40000,'15-07-15 09.00.00','HR'),
(0004,'Anuj','Singh',45000,'14-09-09 09.00.00','HR'),
(0005,'Raj','Saini',40000,'15-10-15 09.00.00','Accountant'),
(0006,'Vikram','Rathor',47000,'14-07-08 09.00.00','Accountant');

select * from employee;


#Create table Bonus
create table bonus(
emp_ref_id int not null,
bonus_amt int,
bonus_date datetime,
foreign key(emp_ref_id) references employee(empid)
on delete cascade
);

#Insert into employee table
insert into bonus values
(0001,5000,'16-04-14'),
(0002,5000,'16-03-13'),
(0003,5000,'17-03-15'),
(0001,5000,'18-03-17'),
(0004,3500,'16-03-19'),
(0005,7000,'16-03-20'),
(0001,8000,'20-03-21'),
(0002,8500,'20-03-21');

select * from bonus;


#Create table Employee Designation

create table designation(
emp_ref_id int,
designation varchar(20),
designation_date datetime,
foreign key(emp_ref_id) references employee(empid)
on delete cascade
);

#Insert into Designation table
insert into designation values
(0001,'Manager','2016-02-05 00.00.00'),
(0002,'Executive','2016-06-11 00.00.00'),
(0003,'Executive','2016-06-11 00.00.00');

select * from designation;
select * from employee;
select * from bonus;













