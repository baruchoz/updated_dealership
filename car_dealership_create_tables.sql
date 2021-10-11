-- Create Customers Table
CREATE TABLE customers(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	phone_number VARCHAR(20),
	email VARCHAR(50),
	vin_number VARCHAR(100)
);

-- Create Salesperson Table
CREATE TABLE salesperson(
	sales_emp_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	employee_email VARCHAR(100)
);

-- Create Mechanic Table
CREATE TABLE mechanic(
	mechanic_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	employee_email VARCHAR(100)
);

-- Create Car Inventory Table
CREATE TABLE car_inventory(
	vin_number VARCHAR(100) PRIMARY KEY,
	year_ INTEGER,
	make VARCHAR(50),
	model VARCHAR(50),
	miles INTEGER,
	used_or_new VARCHAR(5),
	amount NUMERIC(10)
);

ALTER TABLE car_inventory
	ALTER COLUMN amount TYPE NUMERIC(10,2);


-- Create Parts Table
CREATE TABLE parts(
	part_id SERIAL PRIMARY KEY,
	part_name VARCHAR(50),
	description VARCHAR(250),
	price NUMERIC(6,2),
	quantity INTEGER
);

--Create Car Invoice Table
CREATE TABLE car_invoice(
	invoice_id SERIAL PRIMARY KEY,
	date_created DATE
);

ALTER TABLE car_invoice
ADD FOREIGN KEY(sales_emp_id) REFERENCES salesperson(sales_emp_id);

DROP TABLE car_invoice;

--Re-Create Car Invoice Table
CREATE TABLE car_invoice(
	invoice_id SERIAL PRIMARY KEY,
	date_created DATE,
	sales_emp_id INTEGER,
	customer_id INTEGER,
	vin_number VARCHAR(100),
	FOREIGN KEY(sales_emp_id) REFERENCES salesperson(sales_emp_id),
	FOREIGN KEY(customer_id) REFERENCES customers(customer_id),
	FOREIGN KEY(vin_number) REFERENCES car_inventory(vin_number)
);

-- Create Car Service Table 
CREATE TABLE car_service(
	service_ticket SERIAL PRIMARY KEY,
	customer_id INTEGER,
	vin_number VARCHAR(100),
	mechanic_id INTEGER,
	description VARCHAR(250),
	payment_amount NUMERIC(8, 2),
	date_serviced TIMESTAMP,
	part_id INTEGER,
	quantity_used INTEGER	
);

SELECT * FROM car_service

ALTER TABLE car_service
ADD FOREIGN KEY(part_id) REFERENCES parts(part_id);

ALTER TABLE car_service
ADD FOREIGN KEY(mechanic_id) REFERENCES mechanic(mechanic_id);

ALTER TABLE car_service
ADD FOREIGN KEY(customer_id) REFERENCES customers(customer_id);

ALTER TABLE car_service
ADD FOREIGN KEY(vin_number) REFERENCES car_inventory(vin_number);

ALTER TABLE car_service 
DROP CONSTRAINT vin_number;
