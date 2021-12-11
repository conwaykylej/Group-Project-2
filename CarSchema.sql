 --SELECT * FROM original_used_cars;
 --SELECT * FROM original_fuel_efficiency;
 
 DROP TABLE original_used_cars;
 DROP TABLE original_fuel_efficiency;
 DROP TABLE analysis_ready_table;
 --DROP TABLE prices;

 CREATE TABLE original_used_cars (
							ID VARCHAR(200) PRIMARY KEY,
	 						VIN VARCHAR(200),
	 					    PRICE DECIMAL,
	 						MILES INTEGER,
	 						STOCK_NO VARCHAR(200),
	 						YEAR INTEGER NOT NULL,
							MAKE VARCHAR(200) NOT NULL,
							MODEL VARCHAR(200),
							TRIM VARCHAR(200),
							BODY_TYPE VARCHAR(200),
							VEHICLE_TYPE VARCHAR(200),
						    DRIVETRAIN VARCHAR(200),
					        TRANSMISSION VARCHAR(200),
							FUEL_TYPE VARCHAR(200),
							ENGINE_SIZE DECIMAL,
	 						ENGINE_BLOCK VARCHAR(200),
	 						SELLER_NAME VARCHAR(200),
							STREET VARCHAR(100),
							CITY VARCHAR(200),
							STATE VARCHAR(200),
							ZIP VARCHAR(10)
						);	
						
--CREATE TABLE prices (
	                 -- ROW_ID SERIAL PRIMARY KEY,
 					 -- YEAR integer NOT NULL,
					 -- MAKE VARCHAR(200) NOT NULL,
					  --MODEL VARCHAR(200),
					  --PRICE DECIMAL
					--);
					
CREATE TABLE original_fuel_efficiency (
									    ID SERIAL PRIMARY KEY,
									    YEAR INTEGER NOT NULL,
										MAKE VARCHAR(200) NOT NULL,
										MODEL VARCHAR(200),
										MOTOR_TYPE VARCHAR(200) NOT NULL,
									    STANDARD_TYPE VARCHAR(200) NOT NULL,
										EPA_RATING_CITY INTEGER,
									    VEHICLE_COUNT INTEGER,
									    TOTAL_ACTUAL_MILES INTEGER,
										TOTAL_ACTUAL_FUEL INTEGER,
									    EPA_EXPECTED_FUEL DECIMAL,
										ACTUAL_FUEL_ECONOMY_GEOTAB DECIMAL,
									    PERCENT_DIFFERENCE_ACTUAL_TO_EPA DECIMAL,
									    ESTIMATED_FUEL_COSTS_PER_GALLON VARCHAR(200),
								        FUEL_COSTS_PER_MILE VARCHAR(200) 
									);
							
CREATE TABLE analysis_ready_table ();