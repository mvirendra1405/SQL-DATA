use virendra;
show tables;
desc student_d;
select * from student_d;
truncate table student_d ;
drop table student_d;
create table student_d(id tinyint not null unique,
name varchar(10) not null ,marks decimal(6,2),dateofbirth date not null unique,
	course set('java','python','php')
);
desc student_d;
insert into student_d values(1,'harry',45,'1990-09-09','java');

insert into student_d values(2,'harry',45,'1990-09-08','python');

insert into student_d values(3,'harry',45,'1991-09-08','html');

insert into student_d values(4,'ron',45,'1992-09-08','java,python');



