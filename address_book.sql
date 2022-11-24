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
values("Ambadas","Panchal","Shivanagar","Bidar","Karnataka",585326,9552207741,"ambadash.panchal@gmail.com");

/*Update*/
update address_book set address = "Shiva nagar Colony" 
where first_name = "Nagraj";

/* Delete */
delete from address_book where first_name = "Ambadas";

/*Retrive data state or city*/
select * from address_book 
where state = "Karnataka" and city = "Bidar";

/*Size of address state or city using count*/
Select count(state), state,count(city),city from address_book
where state = "Karnataka" and city = "Bidar";

/*Sort order by*/
Select first_name from address_book
where city = "Bidar"
order by first_name;