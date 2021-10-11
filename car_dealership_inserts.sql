-- Add Data to Customers Table 

INSERT INTO customers(
	customer_id,
	first_name,
	last_name,
	phone_number,
	email,
	vin_number
) VALUES(
	1,
	'Immanuel',
	'Kant',
	'(323) 232-3322',
	'immanuelkant@enlightenment.org',
	'4Y1SL65848Z411439'	
),(
	2,
	'Friedrich',
	'Nietzsche',
	'(454) 544-4435',
	'friedniet@zarathustra.com',
	'8T467LB515Y984683'
),(
	3,
	'René',
	'Descartes',
	'(467) 876-4578',
	'redesca@analyticgeometry.com',
	'JN1DA31A52T300757'
),(
	4,
	'Baruch',
	'Spinoza',
	'(710) 613-1018',
	'baruchspinoza@rationalist.org',
	'JH4DB1561NS000565'
),(
	5,
	'Karl',
	'Marx',
	'(367) 963-3737',
	'karlmarx@communism.com',
	'1C3BF66P0GX570598'
),(
	6,
	'Jean-Paul',
	'Sartre',
	'(312) 773-4898',
	'jpsartre@existential.org',
	'5XYKT3A17BG157871'
);

-- Add Data to Salesperson Table 

SELECT * FROM salesperson

INSERT INTO salesperson(
	sales_emp_id,
	first_name,
	last_name,
	employee_email
) Values(
	1,
	'William',
	'Shakespeare',
	'willshakes@hamletmail.com'
),(
	2,
	'Edgar Allan',
	'Poe',
	'edgaralpoe@ravenmail.com'
),(
	3,
	'Robert',
	'Frost',
	'robfrost@roadnottaken.com'
),(
	4,
	'Emily',
	'Dickinson',
	'emilydickinson@flybuzz.com'
);

-- Create Mechanic Table

SELECT * FROM mechanic

INSERT INTO mechanic(
	mechanic_id,
	first_name,
	last_name,
	employee_email
) VALUES(
	1,
	'Thomas',
	'Edison',
	'thomasedison@lightbulb.com'
),(
	2,
	'Alexander Graham',
	'Bell',
	'alexgbell@telephone.com'
),(
	3,
	'Nikola',
	'Tesla',
	'nikolatesla@wirelesstransmission.com'
),(
	4,
	'Isaac',
	'Newton',
	'isaacnewton@reflectiontelescope.com'
);

-- Create Car Inventory Table

SELECT * FROM car_inventory

INSERT INTO car_inventory(
	vin_number,
	year_,
	make,
	model,
	miles,
	used_or_new,
	amount
) VALUES(
	'ZFFFC60A080157960',
	2008,
	'Ferrari',
	'599 GTB Fiorano',
	10222,
	'Used',
	175000.00
),(
	'ZHWBA47S58LA03274',
	2008,
	'Lamborghini',
	'Murcielago',
	22673,
	'Used',
	199950.00
),(
	'SCFAA4129WK971649',
	1998,
	'Aston Martin',
	'DB7',
	35727,
	'Used',
	49750.00
),(
	'WP0AB0910FS120260',
	1985,
	'Porsche',
	'911',
	63267,
	'Used',
	119995.00
),(
	'SCA664L58CUX65601',
	2012,
	'Rolls Royce',
	'Ghost',
	0,
	'New',
	246500.00
);

-- Add Data to Parts Table

SELECT * FROM parts

INSERT INTO parts(
	part_id,
	part_name,
	description,
	price,
	quantity
) VALUES(
	1,
	'Brake Rotors',
	'EBC Performance Brake Rotors GD645. Cast iron alloy.',
	156.99,
	10
),(
	2,
	'Brake Pads',
	'Duralast Gold Ceramic Brake Pads DG962C.',
	44.49,
	10
),(
	3,
	'Engine Intake Manifold',
	'Stock replacement intake manifold set. For Porsche 911.',
	325.00,
	3
),(
	4,
	'5w-30 Engine Oil',
	'Mobil1 Advanced Full Synthetic 5W-30 Motor Oil, 5 Quart',
	34.99,
	24
),(
	5,
	'Radiator',
	'2010-2015 Rolls Royce Ghost Radiator',
	298.46,
	2
),(
	6,
	'Catalytic Converter',
	'Larini Sport Catalytic Converters Ferrari 599 06-12',
	3277.50,
	1
),(
	7,
	'Transmission Fluid',
	'Valvoline MaxLife Multi-Vehicle Automatic Transmission Fluid 1 Gallon',
	28.99,
	8
),(
	8,
	'Flux Capacitor',
	'*TOP SECRET* Enables the ability to travel through time. NOT FOR SALE! *TOP SECRET*',
	9999.99,
	1
);

-- Add Data to Car Invoice Table

SELECT * FROM car_invoice

INSERT INTO car_invoice(
	invoice_id,
	sales_emp_id,
	customer_id,
	vin_number,
	date_created
) VALUES(
	1,
	3,
	5,
	'SCFAA4129WK971649',
	'2021-09-17'
),(
	2,
	1,
	2,
	'ZFFFC60A080157960',
	'2021-08-06'
),(
	3,
	4,
	6,
	'WP0AB0910FS120260',
	'2021-10-01'
),(
	4,
	3,
	1,
	'ZHWBA47S58LA03274',
	'2021-07-14'
);

-- Add Data to Car Service Table

SELECT ALL * FROM car_service

INSERT INTO car_service(
	service_ticket,
	customer_id,
	vin_number,
	mechanic_id,
	description,
	payment_amount,
	date_serviced,
	part_id,
	quantity_used	
) VALUES(
	1,
	3,
	'JN1DA31A52T300757',
	1,
	'Brake Rotor Replacement',
	209.99,
	'2021-07-18 10:53:40',
	1,
	1
),(
	2,
	4,
	'JH4DB1561NS000565',
	3,
	'Catalytic Converter Replacement',
	3500.00,
	'2021-04-21 12:07:22',
	6,
	1
);

