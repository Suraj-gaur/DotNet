Create database EFDBFirstDatabase
Go

use EFDBFirstDatabase

Go

create table Categories(CategoryID bigint primary Key identity(1,1),
CategoryName varchar(40))

Go

create table Brands(BrandID bigint primary Key identity(1,1),
BrandName varchar(40))

go
Create table Products(
ProductID bigint primary Key identity(1,1),
ProductName varchar(40),
Price decimal(15,2),
DateOfPurchase datetime,
AvailibilityStatus varchar(50),
CategoryID bigint references Categories(CategoryID) on delete set null,
BrandID bigint references Brands(BrandID) on delete set null,
Active Bit default(1))

go 

insert into Categories values ('Electronics')
insert into Categories values ('Home Appliances')

go 
insert into Brands values ('Samsung')
insert into Brands values ('Apple')
insert into Brands values ('Sony')
insert into Brands values ('HP')

go 

insert into products values ('Samsung Galaxy S10', 84356, '2017-7-1', 'In-Stock',1,1,1) 
insert into products values ('Samsung  Tv', 84356, '2019-9-11', 'In-Stock',2,1,1)
insert into products values ('Iphone X', 84356, '2018-8-23', 'In-Stock',1,2,1)
insert into products values ('HP Laptop', 84356, '2015-3-1', 'In-Stock',1,4,1)
insert into products values ('Sony Xperia', 84356, '2019-8-1', 'In-Stock',1,3,1)
insert into products values ('Sony headphone', 84356, '2018-5-5', 'In-Stock',2,3,1)

go

select * from products

go