show databases;
use virendra;
select * from student;
truncate table student;
insert into student(fname,iname,contact) values('virendra','mishra','2525232325');
insert into student(fname,iname,contact) values('virendra','mishra','2525252425');
delete from student where roll_no=2;
insert into student(fname,iname,contact) values('virendra','mishra','2533332325');
delete from student;
insert into student(fname,iname,contact) values('virendra','mishra','2344444425');
insert into student(fname,iname,contact) values('virendra','mishra','3535353535');
insert into student values(3,'rr','ss','4545454545','pune');
update student set fname = 'sehwag' where roll_no =3;
update student set fname = 'anuj',iname='virendra' where roll_no=4;

-- this is use to update a roll no.
update student set roll_no =5 where contact=5858585858;
