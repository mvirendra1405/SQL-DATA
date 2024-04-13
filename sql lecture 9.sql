use virendra;
show databases;
create table user(uid int ,uname varchar(20));
insert into user values(1,'rajit');
insert into user values(2,'virendra');
insert into user values(3,'subhash');
insert into user values(4,'anuj');
insert into user values(5,'abhishek');
select * from user;
create table order12(oid int primary key,product_name varchar(20),uid int,foreign key(uid) references user(uid));

alter table user;
select * from order12;

-- modify uid int primary key;
insert into order12 values(1,'milk',1),(2,'bread',2),(3,'butter',4),(4,'ghee',4),(5,'chaas',5);