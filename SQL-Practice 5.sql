/*SQL Joins
1. Inner Join
2. Left Join 
3. Right join
4. Full Join 
5. Natural Join
6. Cross Join
*/

use kapil;
select * from student;
insert into student values(4,'Ramesh','Singh',31),(5,'Raj','Saini',25);

select * from student;
select * from department;

#Inner Join

select student.first_name,student.last_name,student.age,department.department_name
from student inner join department 
on student.studentid = department.studentid;

#Left Join

select student.first_name,student.last_name,student.age,department.department_name
from student left join department 
on student.studentid = department.studentid;

#Right Join

select student.first_name,student.last_name,student.age,department.department_name
from student right join department 
on student.studentid = department.studentid;

#Full Outer Join

select student.first_name,student.last_name,student.age,department.department_name
from student left join department 
on student.studentid = department.studentid

union

select student.first_name,student.last_name,student.age,department.department_name
from student right join department 
on student.studentid = department.studentid;

#Cross Join

select student.first_name,student.last_name,student.age,department.department_name
from student cross join department;

#Natural Join

select student.first_name,student.last_name,student.age,department.department_name
from student natural join department; 


#Stored Procedures
#In and Out

call get_student_info(@record,25);

select @record as totalrecords;






