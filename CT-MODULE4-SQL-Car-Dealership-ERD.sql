-- CODING TEMPLE MODULE 4 SQL Car Dealership ERD


-- create salesperson table
create table salesperson(
	salesperson_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);


-- create customer table
create table customer(
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	phone_number VARCHAR(15),
	email_address VARCHAR(100),
	address VARCHAR(150),
	billing_info VARCHAR(100)
);


-- create mechanic table
create table mechanic(
	mechanic_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);


-- create car table
create table car(
	car_id SERIAL primary key,
	c_make VARCHAR(50),
	c_model VARCHAR(50),
	c_year INTEGER
);


-- create invoice table
create table invoice(
	invoice_id SERIAL primary key,
	amount NUMERIC(8,2),
	car_id INTEGER not null,
	salesperson_id INTEGER not null,
	customer_id INTEGER not null,
	foreign KEY(salesperson_id) references salesperson(salesperson_id),
	foreign key(customer_id) references customer(customer_id)
);


-- create service_ticket table
create table service_ticket(
	service_ticket_id SERIAL primary key,
	car_id INTEGER not null,
	amount NUMERIC(8,2),
	customer_id INTEGER not null,
	mechanic_id INTEGER not null,
	service_description VARCHAR(200),
	parts_needed BOOL
);
