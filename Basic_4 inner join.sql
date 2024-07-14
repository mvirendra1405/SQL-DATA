use virendra;
create table library(lid int,sid int,Book_name varchar(30),booking_date date);
drop table library;
desc library;
insert into library values(101,11,'maths','2023-12-13'),
(102,12,'Hindi','2023-12-10'),
(103,13,'history','2023-11-12'),
(104,14,'science','2023-10-11'),
(105,15,'english','2023-09-28'),
(106,16,'economic','2023-11-19'),
(107,17,'geography','2023-12-14');
SELECT * FROM LIBRARY;
create table student14(sid int,Student_name varchar(30),age int,address varchar(20));
insert into student14 values(11,'Devansh',06,'ghatkopar'),
(12,'virendra',30,'vikhroli'),
(13,'himanshu',22,'kanjurmarg'),
(14,'vijay',32,'bhandup'),
(15,'rahul',33,'thane'),
(16,'shubham',24,'kalwa'),
(17,'shubham',24,'kalwa'),
(18,'dheeraj',24,'kalwa'),
(19,'shivam',26,'mummbra');
insert into student14 values(20,'rajesh',32,'ambarnath');
desc student14;
select * from student14;
select library.lid,student14.sid,library.book_name,student14.Student_name from library inner join student14
on student14.sid=library.sid;
select library.lid,student14.sid,library.book_name,student14.Student_name from library left join student14
on student14.sid=library.sid;
select library.lid,student14.sid,library.book_name,student14.Student_name from library right join student14
on student14.sid=library.sid;
