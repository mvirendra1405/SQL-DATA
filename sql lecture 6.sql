show databases;
use virendra;
create table table1 (id int,name varchar(20));
SET SQL_SAFE_UPDATES = 0;
select * from table1;
insert into table1
value
(1,'virendra'),
(2,'anuj'),
(3,'subhash'),
(4,'ambuj'),
(5,'anuj');
use virendra;
show tables;
create table table2 (id int,name varchar (20));
insert into table2
value
(1,'vira'),
(2,'anu'),
(3,'subash'),
(4,'amuj'),
(5,'auj');
select * from table2;

select * from table1 union select * from table2;
select * from table1 union all select * from table2;
select * from table1 intersect select * from table2;
select * from table1 except select * from table2;

select * from table2 except select * from table1;

select id from table1 union select id from table2;


