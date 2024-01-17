set ansi_nulls on
go
set ansi_padding on
go
set quoted_identifier on
go

create database Techoservice_DataBase
go

use Techoservice_DataBase
go

create table [dbo].[Role] --Role
(
	[ID_Role] [int] not null identity(1,1),
	[Role_Name] [varchar] (50) not null,
	constraint [PK_Role] primary key clustered
	([ID_Role] ASC) on [PRIMARY],
	constraint [UQ_Role_Name] unique ([Role_Name])
)
go

create table [dbo].[User] --User
(
	[ID_User] [int] not null identity(1,1),
	[Surname] varchar(50) not null,
	[Name] varchar(50) not null,
	[Second_Name] varchar(50) null,
	[Login] varchar(50) not null,
	[Password] varchar(350) not null,
	[Telephone] varchar(50) not null,
	[Role_ID] [int] not null,
	constraint [PK_User] primary key clustered
	([ID_User] ASC) on [PRIMARY],
	constraint [CH_Telephone] check ([Telephone] like ('[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')),
	foreign key ([Spot_ID]) references [dbo].[Spot] ([ID_Spot]),
	foreign key ([Role_ID]) references [dbo].[Role] ([ID_Role])
)
go
/*
create table [dbo].[Request] --Request 
(
	[ID_Request] [int] not null identity(1,1),
	[Tech_Number] varchar(50) not null,
	[Name] varchar(50) not null,
	[Second_Name] varchar(50) null,
	[Login] varchar(50) not null,
	[Password] varchar(350) not null,
	[Telephone] varchar(50) not null,
	[Role_ID] [int] not null,
	constraint [PK_User] primary key clustered
	([ID_User] ASC) on [PRIMARY],
	constraint [CH_Telephone] check ([Telephone] like ('[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')),
	foreign key ([Spot_ID]) references [dbo].[Spot] ([ID_Spot]),
	foreign key ([Role_ID]) references [dbo].[Role] ([ID_Role])
)
go
*/