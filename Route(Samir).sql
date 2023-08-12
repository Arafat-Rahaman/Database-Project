CREATE TABLE Airport (
    Airport_ID NUMBER PRIMARY KEY,
    Airport_Name VARCHAR2(100),
    Location VARCHAR2(50)
);



INSERT INTO Airport VALUES (1, 'Shahjalal International Airport', 'Dhaka');
INSERT INTO Airport VALUES (2, 'Hazrat Shah Amanat International Airport', 'Chittagong');
INSERT INTO Airport VALUES (3, 'Osmani International Airport', 'Sylhet');
INSERT INTO Airport VALUES (4, 'Shah Makhdum Airport', 'Rajshahi');
INSERT INTO Airport VALUES (5, 'Jessore Airport', 'Jessore');

SELECT * FROM AIRPORT;


CREATE TABLE Route (
    Route_ID NUMBER PRIMARY KEY,
    Source_Airport_ID NUMBER REFERENCES Airport(Airport_ID),
    Destination_Airport_ID NUMBER REFERENCES Airport(Airport_ID)
);

desc route;

 INSERT ALL
 INTO Route(Route_ID,Source_Airport_ID,Destination_Airport_ID) VALUES (1, 1, 2)
 INTO Route(Route_ID,Source_Airport_ID,Destination_Airport_ID) VALUES  (2, 1, 3)
 INTO Route(Route_ID,Source_Airport_ID,Destination_Airport_ID) VALUES (3, 2, 4)
 INTO Route(Route_ID,Source_Airport_ID,Destination_Airport_ID) VALUES (4, 3, 5)
 INTO Route(Route_ID,Source_Airport_ID,Destination_Airport_ID) VALUES (5, 1, 5)
 SELECT * FROM DUAL;

SELECT * FROM ROUTE;

