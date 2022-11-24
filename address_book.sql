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
Select * from address_book;

/* Insert contact details into address book*/
insert into address_book(first_name,last_name,address,city,state,zip,phone_number,email,Type)
values("Anita","Panchal","Shivanagar","Bidar","Karnataka",585326,9552207741,"anita.panchal@gmail.com","Friends");

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

/* identify each Address Book with name and Type */
alter table address_book add Type varchar(20) after email;
update address_book set Type = "Profession" where first_name = "Ambadas";

/* Count by type */
Select count(Type),phone_number from address_book
where Type = "Family";

/*Add person family and friends*/
insert into address_book(first_name,last_name,address,city,state,zip,phone_number,email,Type)
values("Anita","Panchal","Shivanagar","Bidar","Karnataka",585326,9552207741,"anita.panchal@gmail.com","Friends");
insert into address_book(first_name,last_name,address,city,state,zip,phone_number,email,Type)
values("Jyoti","Panchal","Shivanagar","Bidar","Karnataka",585326,9739713842,"jyoti.panchal@gmail.com","Family");

