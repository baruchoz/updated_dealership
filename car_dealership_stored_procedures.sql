-- Creating a Procedure to add new Employee Name to Salesperson Table Upon New Hire.
CREATE OR REPLACE PROCEDURE add_employee(
	_first_name VARCHAR(50),
	_last_name VARCHAR(50)
)
LANGUAGE plpgsql
AS $$
BEGIN
		INSERT INTO salesperson(first_name, last_name)
		VALUES(_first_name, _last_name);
END;
$$;


CALL add_employee('Albert', 'Einstein');

SELECT * FROM salesperson;

-- Creating a Procedure to Remove a Part from the Parts Table if it runs out of Stock

SELECT * FROM parts;

CREATE OR REPLACE PROCEDURE stock_out(
	 _quantity INTEGER
)
LANGUAGE plpgsql
AS $$
BEGIN
	DELETE FROM parts WHERE quantity = 0;
END
$$;	

CALL stock_out(0);

