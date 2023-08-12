1. Airplane_Type_table..

INSERT INTO Airplane_Type VALUES (1, 'Boeing 737', 150);
INSERT INTO Airplane_Type VALUES (2, 'Airbus A320', 180);
INSERT INTO Airplane_Type VALUES (3, 'Boeing 787', 250);
INSERT INTO Airplane_Type VALUES ((4, 'Embraer E190', 100);
INSERT INTO Airplane_Type VALUES (5, 'Bombardier Q400', 200);



2. Airport_table..

INSERT INTO Airport VALUES (1, 'Shahjalal International Airport', 'Dhaka');
INSERT INTO Airport VALUES (2, 'Hazrat Shah Amanat International Airport', 'Chittagong');
INSERT INTO Airport VALUES (3, 'Osmani International Airport', 'Sylhet');
INSERT INTO Airport VALUES (4, 'Shah Makhdum Airport', 'Rajshahi');
INSERT INTO Airport VALUES (5, 'Jessore Airport', 'Jessore');



3.Countries_table..

INSERT INTO Countries VALUES (1, 'Bangladesh');
INSERT INTO Countries VALUES (2, 'India');
INSERT INTO Countries VALUES (3, 'Thailand');
INSERT INTO Countries VALUES (4, 'Malaysia');
INSERT INTO Countries VALUES (5, 'Singapore');



4.Route_table..

INSERT INTO Route VALUES (1, 1, 2);
INSERT INTO Route VALUES  (2, 1, 3);
INSERT INTO Route VALUES (3, 2, 4);
INSERT INTO Route VALUES (4, 3, 5);
INSERT INTO Route VALUES (5, 1, 5);



5.Flight_table..

INSERT INTO Flight VALUES (1, 1, 1, TO_TIMESTAMP('2023-08-10 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-08-10 10:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Flight VALUES(2, 2, 2, TO_TIMESTAMP('2023-08-10 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-08-10 14:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Flight VALUES(3, 3, 3, TO_TIMESTAMP('2023-08-10 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-08-10 18:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Flight VALUES(4, 4, 4, TO_TIMESTAMP('2023-08-10 20:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-08-10 22:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Flight VALUES(5, 5, 5, TO_TIMESTAMP('2023-08-10 09:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-08-10 11:00:00', 'YYYY-MM-DD HH24:MI:SS'));



6.Airfare_table..

INSERT INTO Airfare VALUES (1, 1, 150);
INSERT INTO Airfare VALUES (2, 2, 200);
INSERT INTO Airfare VALUES (3, 3, 300);
INSERT INTO Airfare VALUES (4, 4, 180);
INSERT INTO Airfare VALUES (5, 5, 120);



7.Employee_table..

INSERT INTO Employee VALUES(1, 'John', 'Doe', 'Pilot',45, +88016-00000000, 'Joydebpur Gazipur','johndoe@gmail.com', 1);
INSERT INTO Employee VALUES(2, 'Jane', 'Smith', 'Flight Attendant',32,+88016-999999999, 'Cox`s Bazar', 'jane@gmail.com', 2);
INSERT INTO Employee VALUES(3, 'Michael', 'Johnson', 'Ground Staff',37,+88016-55555555, 'Mirpur Dhaka', 'michael@gmail.com', 3);
INSERT INTO Employee VALUES(4, 'Emily', 'Williams', 'Air Traffic Controller',26,+88016-33333333, 'Tongi Gazipur', 'emily@gmail.com', 4);
INSERT INTO Employee VALUES(5, 'David', 'Brown', 'Maintenance Technician',22,+88016-66666666, 'Rajshahi', 'david@gmail.com', 5);



8.Passenger_table..

INSERT INTO Passenger VALUES (1, 'Arafat', 'Rahman', 22, 'Male', 01628862623, '1700-Joydebpur',  1);
INSERT INTO Passenger VALUES (2, 'Sajib', 'Mondol', 21, 'Male', 01643932288, '1230-Uttara', 2);
INSERT INTO Passenger VALUES (3, 'Md', 'Rais', 20, 'Male', 01533947469, '1213-Banani', 1);
INSERT INTO Passenger VALUES (4, 'Emma', 'Jahan', 18, 'Female', 01900000000, '1216-Mirpur', 3);
INSERT INTO Passenger VALUES (5, 'Sophia', 'Rahman', 24, 'Female', 01744448888, '1212-Gulshan', 1);



9.Transaction_table..

INSERT INTO Transaction VALUES (1,'Bikash', 1, 1, TO_TIMESTAMP('2023-08-10 07:30:00', 'YYYY-MM-DD HH24:MI:SS'), 150);
INSERT INTO Transaction VALUES (2,'Nogod', 2, 2, TO_TIMESTAMP('2023-08-10 11:30:00', 'YYYY-MM-DD HH24:MI:SS'), 200);
INSERT INTO Transaction VALUES (3,'Rocket', 3, 3, TO_TIMESTAMP('2023-08-10 15:45:00', 'YYYY-MM-DD HH24:MI:SS'), 300);
INSERT INTO Transaction VALUES (4,'Bikash', 4, 4, TO_TIMESTAMP('2023-08-10 19:15:00', 'YYYY-MM-DD HH24:MI:SS'), 180);
INSERT INTO Transaction VALUES (5,'Nogod', 5, 5, TO_TIMESTAMP('2023-08-10 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), 120);
	


