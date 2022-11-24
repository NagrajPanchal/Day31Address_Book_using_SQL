create database address_book;
show databases;
use address_book;

/* create Table Address Book */
create table address_book (
first_name varchar(30),
last_name varchar(30),
address varchar(40),
city varchar(30),
state varchar(30) default 'Karnataka', 
zip int, 
phone_number long not null,
email varchar(50),
primary key(first_name)
);

/* Insert contact details into address book*/
insert into address_book(first_name,last_name,address,city,state,zip,phone_number,email)
values("Nagraj","Panchal","Shivanagar","Bidar","Karnataka",585326,9739713842,"nagraj.panchal@gmail.com");