-- drop database BookingSystem;
-- create database BookingSystem;
use BookingSystem;

create table customer(
		ID 					varchar(32),
		lastvisit 	datetime,
		firstname		varchar(64),
		lastname		varchar(64),		
		address			varchar(64),
		email				varchar(64),
		primary key(ID)
);

create table click(
		ID					integer not null auto_increment,
		time				datetime,
		type				varchar(32),
		customerID 	varchar(32),
		clickdata		varchar(32),
		primary key(ID)
);

create table resource(
		ID 					varchar(32),
		name				varchar(64),
		type				varchar(32),
		company			varchar(64),
		location		varchar(64),
		category		integer,
		size				integer,
		cost				integer,
		primary key(ID)
);

create table resourceavailability(
		resourceID	varchar(32),
		date				datetime,		
		dateto			datetime,		
		primary key	(resourceID,date)
);

create table booking(
		resourceID	varchar(32),
		date				datetime,
		dateto 		  datetime,
		position		integer,
		cost				integer,
		status			integer,
		rebate			integer,
		customerID 	varchar(32),
		auxdata			varchar(128),
		primary key(resourceID,date,position)
);