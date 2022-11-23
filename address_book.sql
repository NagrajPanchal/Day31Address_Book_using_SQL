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
