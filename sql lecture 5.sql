show databases;
use virendra;
create table student_data(
id int,name varchar(30),department varchar(30),marks int,paid_fees int,attentance int);
select * from student_data;
insert into student_data values(1,'virendra','technology',70,25000,50);
insert into student_data values(10,'subhash','sociology',50,45000,50);
insert into student_data values(11,'anuj','computer',45,65000,60);
insert into student_data values(12,'ambuj','science',78,25000,75);
insert into student_data values(13,'atish','math',80,45000,55);
insert into student_data values(14,'sunny','hindi',60,35000,50);
select * from student_data where name like 's%';
select * from student_data where name like '%s';
select * from student_data where name like '%a';
select * from student_data where name like 's%h';
select * from student_data where name like '__b%';
select * from student_data where name like '%d__';
select * from student_data where name like 'v______a';
select * from student_data where name like 'v%a';
insert into student_data values(14,'asif','mathhhhhhhhhhh',70,35000,65);
