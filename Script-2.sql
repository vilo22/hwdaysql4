
create table theater(
	seller_id serial primary key,
	brand_name varchar(100),
	webpage varchar(100)
);

select * from theater;

create table customers(
	ticket_id serial primary key,
	first_name varchar(100),
	last_name varchar(100) not null,
	address varchar(100)
);

create table tickets (
	movie_name varchar(150) primary key,
	price numeric(3,2),
	room integer, 
	seat integer,
	ticket_id integer,
	foreign key(ticket_id) references customers(ticket_id)
);
--If a table was created how can I edit it or add something else?
select * from tickets;

create table concessions (
	concessions_inventory serial primary key,
	snacks integer,
	drinks integer,
	seller_id serial,
	foreign key(seller_id) references theater(seller_id)
);

create table products (
	movie_id serial primary key,
	concessions_inventory integer,
	foreign key(concessions_inventory) references concessions(concessions_inventory)
);

create table movies(
	length_ integer, 
	movie_name varchar(150),
	foreign key(movie_name) references tickets(movie_name),
	movie_id integer,
	foreign key(movie_id) references products(movie_id)
);



insert into theater(brand_name, webpage)
values('cines unidos', 'somemovieswebpage.com');

select* from theater ;

insert into concessions(seller_id)
values(1);

insert into concessions(snacks, drinks)
values(50,30);


select* from concessions ;

insert into products(concessions_inventory)
values(1);

select * from products;

insert into customers(first_name, last_name, address)
values('Carlos', 'Figueroa','3432 vitruvian pkwy'),
('Paola','Perez', '9292 farmers branch');

select * from customers;

insert into tickets(movie_name)--, room, seat)
values('Bee Movie: HONEY JUST GOT FUNNY');
--, 9.99 How can I add a numeric value??

select * from tickets;

insert into movies(length_,)
values(130);

insert into movies(movie_name)
values('Bee Movie: HONEY JUST GOT FUNNY');

select * from movies;