use virendra;
create table college(cid int,cname varchar(20),location varchar(20));
desc college;
create table studentc(sid int primary key,sname varchar(20),sage int,scity varchar(30),
cid int,foreign key(cid) references college(cid));
desc studentc;
alter table college modify cid int primary key;
desc college;
insert into college values(1,'mit','pune'),
(2,'ajit','mumbai'),(3,'ITT','Mumbai'),;
insert into studentc values(1,'rohit','23','nashik',3),
(2,'rahul',24,'pune',1),(4,'rom',24,'Thane',2),(5,'rustom',23,'Thane',null),(6,'rancho',23,'nepal',null);
insert into studentc values(3,'yuvraj',24,'pune',1);
select * from studentc inner join college on studentc.cid=college.cid;
select studentc.sname,studentc.scity as student_Address,college.cname as College_name,
college.location as college_address from college inner join studentc on studentc.cid=college.cid;

select * from studentc natural join college;