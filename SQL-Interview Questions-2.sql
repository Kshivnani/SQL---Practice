use company;
select * from employee;
select * from designation;
select * from bonus;

#Questions 
#1. Write an sql query to retrieve all details where first name from employee table
#which starts with 'n'.

select * from employee 
where first_name like '%a%';

#2. Write an sql query to print all details of the employees whose salary
# between 45000 to 80000.

select concat(first_name,' ',last_name) as employee_name,salary 
from employee where empid in 
(select empid from employee where salary between 45000 and 80000);

#3. SQL query to retrieve details of the employees who have joined on a date 

select * from employee;
select * from employee where year(joining_date)=2014 and month(joining_date)=09;

#4. SQL query to fetch number of employees in every department

select * from employee;
select count(*) from employee group by department_name;

select * from employee where department_name = 'Development';

#Intermediate
#5. SQL query to print details of the employee who are also executives

select * from employee;
select * from designation;
select employee.first_name, designation.designation from
employee 
inner join 
designation
on employee.empid = designation.emp_ref_id
and designation.designation = 'Manager';

#6. SQL query to clone a new table from another table

create table clone_employee like employee;
select * from clone_employee;
desc clone_employee;

#7. SQL query to show top n salary of employees

select * from employee order by salary desc limit 4;
select * from employee order by salary asc limit 3;

#Increasing Complexity
#8. SQL query to determine the 6th higest salary

select * from employee order by salary limit 5,1;

#9. 




