use virendra;
create table employee14(id int,name varchar(20),Dept_Name varchar(30),Manager_id int);
desc employee14;
drop  table employee14;
insert into employee14 values(101,'virendra','software developer',102),
(102,'himanshu','CEO',104),
(103,'vijay','manager',102),
(104,'rahul','hod',104),
(105,'Devansh','board member',101);
select * from employee14;
select a.id,b.name,a.name as manager_name,b.Dept_name from employee14 as a join employee14 as b on a.id=b.Manager_id;

