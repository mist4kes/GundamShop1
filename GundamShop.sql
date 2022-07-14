create database GundamShop
go
use GundamShop
go
create table Category
(
id int primary key,
name varchar(30)
)
go
create table Gundam
(
id int primary key,
name1 varchar(200),
price int,
imgPath varchar(50),
[description] text,
[status] varchar(100),
[categoryId] int references Category(id)
)
go
insert into Category values
(1, 'SD'),
(2, 'HG'),
(3, 'RG'),
(4, 'MG'),
(5, 'PG')
go


insert into Gundam values
(1, 'Gundam Metal Build Seed Destiny',350000, 'Gundam Metal Build Seed Destiny.jpg','His red wing is rampage!',1,1),
(2, 'Mobile Suit Gundam Unicorn RX-0',800000,'Mobile Suit Gundam Unicorn RX-0.jpg','His power is invulnerable!',1,4),
(3, 'Gundam Breaker Battlogue Barbataurus',3000000,'Gundam Breaker Battlogue Barbataurus.jpg','A bellicose berserker!',1,4),
(4, 'Gundam GN-001 Gundam Exia',9900000,'Gundam GN-001 Gundam Exia.jpg','Shield to heal!',1,5),
(5, 'Gundam Heavyarms XXXG-01H',749000,'Gundam Heavyarms XXXG-01H.jpg','Gatling everywhere!',1,2),
(6, 'Mobile Suit Gundam RX-78-2',289000,'Mobile Suit Gundam RX-78-2.jpg','His basic armor can defeat you with 1 hit!',1,1),
(7, 'Gundam Wing XXXG-01S Shenlong',900000,'Gundam Wing XXXG-01S Shenlong.jpg','Slash!',1,2),
(8, 'Mobile Suit Gundam Seed Aile Strike',2500000,'Mobile Suit Gundam Seed Aile Strike.jpg','Starlight cant be stamp out!',1,5)
go

go
CREATE TABLE Users(
	[userID] [varchar](50) NOT NULL,
	[fullName] [nvarchar](500) NOT NULL,
	[roleID] [char](2) NOT NULL,
	[password] [varchar](50) NULL
	)
GO
INSERT Users ([userID], [fullName], [roleID], [password]) VALUES (N'admin', N'Administrator', N'AD', N'1')
INSERT Users ([userID], [fullName], [roleID], [password]) VALUES (N'hoang', N'NGUYEN SI HOANG', N'US', N'1')
INSERT Users ([userID], [fullName], [roleID], [password]) VALUES (N'dat', N'TRAN KIM DAT', N'US', N'1')
INSERT Users ([userID], [fullName], [roleID], [password]) VALUES (N'haianh', N'NGUYEN VU HAI ANH', N'US', N'1')
INSERT Users ([userID], [fullName], [roleID], [password]) VALUES (N'thanh', N'BUI HUU THANH', N'US', N'1')
