/*SQL constraints
1. Not Null
2. Unique
3. Primary Key
4. Foreign Key
5. Check
6. Default 
7. Index
*/
use customer;

create table student(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int);

desc student;

#modify age column to not null in student table
alter table student modify age int not  null;

# add constraint UNIQUE to id
create table person(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int not null,
unique(id)
);

insert into person values(1,'Anuj','Singh',21);
select * from person;

# add unique to first_name
alter table person add unique(first_name);
desc person;

#combine two features and created it as new unique index
alter table person 
add constraint uc_person unique(age,first_name);

desc person;

#how to drop a unique constraint
alter table person 
drop index uc_person;

#Primary key

create table person1(
id int not null,
first_name varchar(25) not null,
last_name varchar(25),
age int,
constraint pk_person primary key(id,last_name)
);

alter table person1
add primary key(id);

desc person1;

alter table person1
drop primary key;





