CREATE OR REPLACE FUNCTION public.addsalesperson(_salesperson_id integer, _first_name character varying, _last_name character varying)
 RETURNS void
 LANGUAGE plpgsql
AS $function$
begin 
	-- Add the salesperson info
	insert into salesperson
		(salesperson_id, first_name, last_name)
	values
	(_salesperson_id, _first_name, _last_name);
end;
$function$
;



CREATE OR REPLACE FUNCTION public.addcar(_car_id integer, _c_make character varying, _c_model character varying, _c_year integer)
 RETURNS void
 LANGUAGE plpgsql
AS $function$
begin 
	-- Add the car info
	insert into car
		(car_id, c_make, c_model, c_year)
	values
	(_car_id, _c_make, _c_model, _c_year);
end;
$function$
;



insert into mechanic (mechanic_id, first_name, last_name)
	values (1, 'Bob', 'Burnquest');
insert into mechanic (mechanic_id, first_name, last_name)
	values (2, 'Tony', 'Hawk');

insert into customer (customer_id, first_name, last_name, phone_number, email_address, address, billing_info)
	VALUES(1, 'Ash', 'Ketchum', '555-555-5555', 'pokemaster@kanto.com', '555 Gary Is Lame Rd', '1234-1234-1234-1234 123 12-34');
insert into customer (customer_id, first_name, last_name, phone_number, email_address, address, billing_info)
	VALUES(2, 'Gary', 'Oak', '555-555-5556', 'ashislame@champion.com', '555 Ash Is A Loser Rd', '1234-1234-1234-1234 12 12-34');

insert into invoice (invoice_id, amount, car_id, salesperson_id, customer_id)
	VALUES(1, 100.00, 1, 1, 1);
insert into invoice (invoice_id, amount, car_id, salesperson_id, customer_id)
	VALUES(2, 200.00, 2, 2, 2);

insert into service_ticket (service_ticket_id, car_id, amount, customer_id, mechanic_id, service_description, parts_needed)
	values (1, 1, 100.00, 1, 1, 'Ate toast', True);
insert into service_ticket (service_ticket_id, car_id, amount, customer_id, mechanic_id, service_description, parts_needed)
	values (2, 2, 200.00, 2, 2, 'Ate bread', False);


select * from service_ticket;

