use virendra;
select * from studentc;
select * from college;

select * from college left join studentc on studentc.cid=college.cid;

select * from college right join studentc on studentc.cid=college.cid;

select * from college left join studentc on studentc.cid=college.cid
union
select * from college right join studentc on studentc.cid=college.cid;

create table employeec(eid int,ename varchar(20),designation varchar(20),mid int);
insert into employeec values(1,'virendra','CEO',0),(2,'anuj','HR',1),(3,'rohit','dev',5),
(4,'abhishek','dev',5),(5,'saud','dmanager',1);
select * from employeec;
truncate employeec;

select e.ename as employee_name,e.designation,m.ename as Manager_name,m.designation
from employeec as e inner join employeec as m on m.eid=e.mid;

select e.ename as employee_name,e.designation,m.ename as Manager_name,m.designation
from employeec as e,employeec as m where e.mid=m.eid;

use virendra;
show tables;
select * from table1;
select * from table2;
select table1.name,table2.name from table1 cross join table2;
select table1.name,table2.name from table1,table2;

select * from studentc;
select sid from studentc where sage between 20 and 23;
select * from studentc where sid=(select sid from studentc where sage between 20 and 30);
select * from studentc where sid>some( select sid from studentc where sid between 1 and 3);

select * from studentc where sage = ( select max(sage) from studentc where sage < (select max(sage)from studentc));

select * from studentc where sage in (select sage from studentc where sid >3);
select * from studentc where sage in (24,23,23);


