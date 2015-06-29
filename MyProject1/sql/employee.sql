create table employee(id varchar(20) not null,name varchar(50) null,city varchar(30) null,salary double, primary key(id));
insert into employee values('111','Phool chandra1','HRI',19999);
insert into employee values('112','Phool chandra221','LKO',50000);
insert into employee values('113','Phool chandra3331','Noida',2000);
insert into employee values('114','Phool chandra3331','Delhi',30000);
delete * from employee where name like 'phool';
delete  from employee;
select  * from employee;
drop table employee;