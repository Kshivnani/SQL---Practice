create database kapil;
use kapil;

#create table student

create table student(
id int not null,
first_name varchar(20),
last_name varchar(20),
age int
);

#create index on 1 column

create index age_index
on student(age);

desc student;

#create index on multiple columns

create index index_age_first_name
on student(first_name,age);

#drop index

alter table student
drop index index_age_first_name;

desc student;

alter table student
drop index age_index;

desc student;








