 --SELECT * FROM original_used_cars;
 --SELECT * FROM original_fuel_efficiency;
 --select * from analysis_ready_car_data
 
 DROP TABLE original_used_cars;
 DROP TABLE original_fuel_efficiency;
 DROP TABLE analysis_ready_car_data;

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
											
CREATE TABLE analysis_ready_car_data ( 
										ID SERIAL PRIMARY KEY,
										year INTEGER NOT NULL,
										make VARCHAR(200) NOT NULL,
										model VARCHAR(200),	
										price DECIMAL,	
										miles INTEGER,	
										trim VARCHAR(200),	
										body_type VARCHAR(200),
										vehicle_type VARCHAR(200),	
										drivetrain VARCHAR(200),
										transmission VARCHAR(200),	
										fuel_type VARCHAR(200),	
										engine_size DECIMAL,
										motor_type VARCHAR(200) NOT NULL,
										standard_type VARCHAR(200) NOT NULL,
										epa_rating_city INTEGER,
										total_actual_miles INTEGER,
										total_actual_fuel INTEGER,
										epa_expected_fuel DECIMAL,
										actual_fuel_economy_geotab DECIMAL,
										percent_difference_actual_to_epa DECIMAL,
										estimated_fuel_costs_per_gallon VARCHAR(200),
										fuel_costs_per_mile VARCHAR(200) 
								  );								  