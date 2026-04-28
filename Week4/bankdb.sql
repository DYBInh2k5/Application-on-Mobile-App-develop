create database bankdb
use bankdb
create table customer (
    cusId varchar(10) primary key,
    fullname varchar(50),
    phone varchar(15)
)

create table accounts(
   accId int primary key auto_increment,
   accName varchar(50),
   rate float,
   openDate date,
   amount double,
   term varchar(20),
   cusId varchar(10) references customer(cusId)
)

insert into customer values('CUS0001', 'thitran', '123456678' )
insert into customer values('CUS0002', 'thittt', '123454448' )
insert into accounts(accName,rate,openDate,amount,term,cusId) values('ACC123456', 4.5,'2026-04-23',500000,'3 motnhs', 'CUS0002')

select * from customer;
select * from accounts;

select fullname,a.cusId,phone,accName,rate
from customer c,accounts a
where c.cusId = a.cusId and a.cusId="CUS0001"


