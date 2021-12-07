drop database Hotel;
create database Hotel;
Use Hotel ;
create table tblHotel 
(
ID integer(11) not null ,
Name varchar(45) not null,
starLevel integer(10) not null,
address varchar(250) not null,
description varchar(250) not null,
Primary key (ID)
);
Insert into tblHotel (ID, name, starLevel, address, description ) Values(1, 'ABCHotel', 3,'Truong Chinh','New');
Insert into tblHotel (ID, name, starLevel, address, description ) Values(2, 'NBMHotel', 5,'Vi Hoang','Old');
Insert into tblHotel (ID, name, starLevel, address, description ) Values(3, 'OIPHotel', 2,'Quang Trung','New');
Insert into tblHotel (ID, name, starLevel, address, description ) Values(4, 'UYTHotel', 6,'Nguyen Hue','New');
Insert into tblHotel (ID, name, starLevel, address, description ) Values(5, 'PPPHotel', 1,'Phu Long','Old');
Insert into tblHotel (ID, name, starLevel, address, description ) Values(6, 'AJKHotel', 2,'Hang Dong','Old');
create table tblUser 
(
ID integer(11) not null,
fullName varchar(250) not null,
usename varchar(45) not null,
CMND varchar(45) not null,
address varchar(500) not null,
idCardNumber varchar(45) not null,
idCardType varchar (45) not null,
description varchar(250) not null,
Primary key (ID)
);
Insert into tblUser (ID,fullName, usename, CMND, address, idCardNumber, idCardType, description) Values( 1, 'Mai Lan Khue', 'Khue','12345', 'Kim Dong','11111','Bronze1','NoVip');
Insert into tblUser (ID,fullName, usename, CMND, address, idCardNumber, idCardType, description) Values( 2, 'Tran Bao Nam', 'Nam','77615', 'Nguyen Trai','22229','Silver1','NoVip');
Insert into tblUser (ID,fullName, usename, CMND, address, idCardNumber, idCardType, description) Values( 3, 'Pham Nhu Nhi', 'Nhi','99191', 'Hai Ba Trung','33333','Bronze2','NoVip');
Insert into tblUser (ID,fullName, usename, CMND, address, idCardNumber, idCardType, description) Values( 4, 'Nguyen Duy Ngoc', 'Ngoc','91151', 'Duy Hung','44449','Silver2','NoVip');
Insert into tblUser (ID,fullName, usename, CMND, address, idCardNumber, idCardType, description) Values( 5, 'Tran Minh Thai', 'Thai','09090', 'Bach Mai','55555','Gold1','Vip');
Insert into tblUser (ID,fullName, usename, CMND, address, idCardNumber, idCardType, description) Values( 6, 'Bui Minh Duc', 'Duc','171717', 'Kim Dong','66669','Gold2','Vip');
Insert into tblUser (ID,fullName, usename, CMND, address, idCardNumber, idCardType, description) Values( 7, 'Pham My Ha', 'Ha','8887151', 'Nguyen Trai','77777','Diamond1','Vip');
create table tblRoom 
(
ID integer(11) not null,
name varchar (45) not null,
type varchar(45) not null,
displayPrice float(11) not null,
pricefirst float(10) not null,
description varchar(250) not null,
IDHotel integer(11) not null,
primary key (ID),
constraint IDHotel_FK foreign key (IDHotel) references tblHotel (ID)
);
Insert into tblRoom (ID, name, type, displayPrice, pricefirst, description, IDHotel) values (1, 'Room201','Single','1000000','500000','empty',2);
Insert into tblRoom (ID, name, type, displayPrice, pricefirst, description, IDHotel) values (2, 'Room982','Couple','2000000','1200000','full',1);
Insert into tblRoom (ID, name, type, displayPrice, pricefirst, description, IDHotel) values (3, 'Room125','Single','1500000','1000000','full',3);
Insert into tblRoom (ID, name, type, displayPrice, pricefirst, description, IDHotel) values (4, 'Room262','Couple','2300000','1650000','empty',4);
Insert into tblRoom (ID, name, type, displayPrice, pricefirst, description, IDHotel) values (5, 'Room467','Single','900000','450000','full',6);
Insert into tblRoom (ID, name, type, displayPrice, pricefirst, description, IDHotel) values (6, 'Room902','Couple','2250000','1550000','empty',5);
Insert into tblRoom (ID, name, type, displayPrice, pricefirst, description, IDHotel) values (7, 'Room418','Single','1020000','600000','full',4);
create table tblBooking 
(
ID integer(11) not null,
idRoom integer(11) not null,
idUser integer(11) not null,
startDate date not null,
endDate date not null,
price float(10) not null,
description varchar(250) not null,
primary key (ID),
constraint idRoom_FK foreign key (idRoom) references tblRoom (ID),
constraint idUser_FK foreign key (idUser) references tblUser (ID)
);
Insert into tblBooking (ID, idRoom, idUser, startDate, endDate, price,description) Values (1, 1,7,'2021-11-10','2021-11-20',12000000,'Complete');
Insert into tblBooking (ID, idRoom, idUser, startDate, endDate, price, description) Values (2, 2,6,'2021-09-05','2021-09-10',20345000,'Complete');
Insert into tblBooking (ID, idRoom, idUser, startDate, endDate, price,description) Values (3, 3,5,'2021-12-10','2021-12-15',12050000,'NotComplete');
Insert into tblBooking (ID, idRoom, idUser, startDate, endDate, price, description) Values (4, 4,3,'2021-06-21','2021-07-01',22000000,'Complete');
Insert into tblBooking (ID, idRoom, idUser, startDate, endDate, price, description) Values (5, 5,1,'2021-12-10','2021-12-24',32000000,'NotComplete');
Insert into tblBooking (ID, idRoom, idUser, startDate, endDate, price, description) Values (6, 6,4,'2021-01-11','2021-01-13',5200000,'Complete');
Insert into tblBooking (ID, idRoom, idUser, startDate, endDate, price, description) Values (7, 7,2,'2021-12-09','2021-12-17',11900000,'Complete');
Insert into tblBooking (ID, idRoom, idUser, startDate, endDate, price,description) Values (8, 3,6,'2021-04-07','2021-04-12',13670000,'NotComplete');
Insert into tblBooking (ID, idRoom, idUser, startDate, endDate, price,description) Values (9, 4,5,'2021-03-07','2021-03-15',10000000,'Complete');
Insert into tblBooking (ID, idRoom, idUser, startDate, endDate, price,description) Values (10, 7,3,'2021-06-09','2021-06-12',8000000,'NotComplete');
create table tblBill 
(
ID integer (11) not null,
idBooking integer(11) not null,
PaymentDate Date not null,
amount float(11) not null,
paymentType varchar(45) not null,
notes varchar(250) not null,
primary key(ID),
constraint idBooking_FK foreign key (idBooking) references tblBooking (ID)
);
Insert into tblBill (ID, idBooking, PaymentDate, amount, paymentType, notes) Values (1,3,'2021-11-20','2','card','paid');
Insert into tblBill (ID, idBooking, PaymentDate, amount, paymentType, notes) Values (2,5,'2021-12-30','2','money','Notpaid');
Insert into tblBill (ID, idBooking, PaymentDate, amount, paymentType, notes) Values (3,6,'2021-01-13','2','card','Notpaid');
Insert into tblBill (ID, idBooking, PaymentDate, amount, paymentType, notes) Values (4,1,'2021-11-21','2','Money','paid');
Insert into tblBill (ID, idBooking, PaymentDate, amount, paymentType, notes) Values (5,2,'2021-09-10','2','card','paid');
Insert into tblBill (ID, idBooking, PaymentDate, amount, paymentType, notes) Values (6,7,'2021-02-20','2','card','Notpaid');
Insert into tblBill (ID, idBooking, PaymentDate, amount, paymentType, notes) Values (7,4,'2021-07-01','2','Money','paid');
Insert into tblBill (ID, idBooking, PaymentDate, amount, paymentType, notes) Values (8,8,'2021-04-25','2','card','paid');
drop table tblBill;
drop table tblBooking;
drop table tblUser;
drop table tblRoom;
drop table tblHotel;
-- 1.
select 
Us.fullName,
Us.idCardNumber
from tblUser Us 
where
Us.fullName Like 'tran%' and Us.idCardNumber Like '%9';
-- 2.
select
Ro.ID,
Ro.Name,
Ro.DisplayPrice
from tblRoom Ro
where Ro.displayPrice between 1000000 and 2000000;
-- 3.
select 
Us.fullname As 'Tên khách hàng',
Us.CMND as 'Thẻ căn cước',
Ro.Name as 'Tên Phòng',
Ro.displayPrice as 'Giá Phòng',
Bo.startDate as 'Thời gian bắt đầu ',
Bo.endDate as ' Thời gian kết thúc '
from tblBooking Bo
join tblRoom Ro On Bo.IDRoom = Ro.ID
join tblUser Us On Bo.idUser = Us.ID
where month (startDate) =12;
-- 4.
select 
Us.fullname As 'Tên khách hàng',
Us.CMND as 'Thẻ căn cước',
Ro.Name as 'Tên Phòng',
Ro.displayPrice as 'Giá Phòng',
Ro.Pricefirst as 'Giá đặt phòng',
Bo.startDate as 'Thời gian bắt đầu ',
Bo.endDate as ' Thời gian kết thúc ',
Bo.Price as 'Tổng tiền thanh toán'
from tblBooking Bo 
join tblRoom Ro On Bo.IDRoom = Ro.ID
join tblUser Us On Bo.IdUser = Us.ID;
-- 5.
select 
Ro.Name as ' Tên phòng ',
count(Bo.Idroom) as ' Số lần đặt',
sum(Bo.price) as 'Tổng tiền'
from tblBooking Bo
join tblRoom Ro On Bo.Idroom = Ro.ID
group by Ro.Name
Order by sum(Bo.Price) Desc;







