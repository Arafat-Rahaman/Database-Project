1.. Airplane_Type_table.

CREATE TABLE Airplane_Type (
    Type_ID NUMBER PRIMARY KEY,
    Type_Name VARCHAR2(100),
    Capacity NUMBER
);


2.. Airport_table.

CREATE TABLE Airport (
    Airport_ID NUMBER PRIMARY KEY,
    Airport_Name VARCHAR2(100),
    Location VARCHAR2(50)
);



3..Countries_table_(Rias).

CREATE TABLE Countries (
    Country_ID NUMBER PRIMARY KEY,
    Country_Name VARCHAR2(50)
);



4..Route_table_(Rias).

CREATE TABLE Route (
    Route_ID NUMBER PRIMARY KEY,
    Source_Airport_ID NUMBER REFERENCES Airport(Airport_ID),
    Destination_Airport_ID NUMBER REFERENCES Airport(Airport_ID)
);




5..Flight_table_(Sajib).

CREATE TABLE Flight (
    Flight_ID NUMBER PRIMARY KEY,
    Route_ID NUMBER REFERENCES Route(Route_ID),
    Airplane_Type_ID NUMBER REFERENCES Airplane_Type(Type_ID),
    Departure_Time TIMESTAMP,
    Arrival_Time TIMESTAMP
);



6..Airfare_table_(Sajib).

CREATE TABLE Airfare (
    Airfare_ID NUMBER PRIMARY KEY,
    Flight_ID NUMBER REFERENCES Flight(Flight_ID),
    Fare_Amount NUMBER
);



7..Employee_table.

CREATE TABLE Employee (
    Employee_ID NUMBER PRIMARY KEY,
    First_Name VARCHAR2(50),
    Last_Name VARCHAR2(50),
    Position VARCHAR2(50),
    Age NUMBER,
    Phone NUMBER,
    Address VARCHAR2(40),
    Email VARCHAR2(50),
    Airport_ID NUMBER REFERENCES Airport(Airport_ID)
);



8..Passenger_table.

CREATE TABLE Passenger(
    Passenger_ID NUMBER PRIMARY KEY,
    First_Name VARCHAR2(50),
    Last_Name VARCHAR2(50),
    Age NUMBER,
    Gender VARCHAR2(10),
    Phone NUMBER,
    Address VARCHAR(50),
    Country_ID NUMBER REFERENCES Countries(Country_ID)
);



9..Transaction_table.

CREATE TABLE Transaction (
    Transaction_ID NUMBER PRIMARY KEY,
    Transaction_Type VARCHAR2(20),
    Passenger_ID NUMBER REFERENCES Passenger(Passenger_ID),
    Flight_ID NUMBER REFERENCES Flight(Flight_ID),
    Transaction_Date TIMESTAMP,
    Amount NUMBER
);


