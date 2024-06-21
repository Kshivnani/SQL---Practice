/* MySQL 
SQL NULL Values
SQL update Statement
SQL Delete statement
SQL Alter Table
-- Add column in existing Column
--Modify/alter Column
--Alter Table-drop Column

*/

#create Database
create database customer;
use customer;
create table customer_info(
id integer auto_increment,
first_name varchar(25),
last_name varchar(25),
salary integer,
primary key (id)
);


# insert records in customer_info
insert into customer_info(first_name,last_name,salary) 
values
("Kapil","Shivnani",40000),
("Rahul","Kumawat",30000),
("Anuj","Singh",35000),
("Aashwin","Sharma",10000),
("Vikram","Rathore",11000),
("Rahul","Choudhary",NULL);

# SQL is null is not null >>>>

select * from customer_info where salary is null;

# SQL update statement to replace null values

update customer_info set salary=55000 where id=6;
select * from customer_info;

# SQL Delete statement

delete from customer_info where id=6;

# SQL alter table
# add column in existing table

alter table customer_info add email varchar(20);

alter table customer_info add dob date;
select * from customer_info;

#alter table modify column

alter table customer_info modify dob year;

desc customer_info;

# alter table to drop column

alter table customer_info drop column email;

select * from customer_info;
desc customer_info
























