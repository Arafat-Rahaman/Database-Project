1.List_all_airports..

SELECT * FROM Airport;




2.Retrieve_flight_details_with_source_and_destination_airport_names..

SELECT
    f.Flight_ID, f.Departure_Time, f.Arrival_Time, r.Source_Airport_ID,
    (SELECT Airport_Name FROM Airport WHERE Airport_ID = r.Source_Airport_ID) AS Source_Airport_Name, r.Destination_Airport_ID,
    (SELECT Airport_Name FROM Airport WHERE Airport_ID = r.Destination_Airport_ID) AS Destination_Airport_Name

FROM Flight f, Route r
WHERE f.Route_ID = r.Route_ID;




3.Find the passengers who have booked the most expensive flight..

SELECT Passenger_ID, (First_Name ||' ' ||Last_Name) as "Full Name", Age, Gender, Phone, Address
FROM Passenger
WHERE Passenger_ID = (
    SELECT Passenger_ID
    FROM Transaction
    WHERE Amount = (
    SELECT MAX(Amount)
    FROM Transaction
    )
);




4.Retrieve flights that have the shortest duration..

SELECT Flight_ID, Departure_Time, Arrival_Time
FROM Flight
WHERE (Arrival_Time - Departure_Time) = (
    SELECT MIN(Arrival_Time - Departure_Time)
    FROM Flight
);




5.List passengers who have booked flights departing_from a_specific airport..

SELECT Passenger_ID, First_Name, Last_Name, Age, gender,Phone
FROM Passenger
WHERE Passenger_ID IN (
    SELECT DISTINCT t.Passenger_ID
    FROM Transaction t
JOIN Flight f ON t.Flight_ID = f.Flight_ID
JOIN Route r ON f.Route_ID = r.Route_ID
    WHERE r.Source_Airport_ID = 1 
);




6. Find flights_with fares higher_than the average fare amount..

SELECT Flight_ID, Departure_Time, Arrival_Time
FROM Flight
WHERE Flight_ID IN (SELECT Flight_ID
    FROM Airfare
    WHERE Fare_Amount > (SELECT AVG(Fare_Amount)
    FROM Airfare )
);




7.Find the average fare amount for_each airplane_type..

SELECT at.Type_ID as "Airplane Type ID", at.Type_Name as "Airplane type Name", AVG(af.Fare_Amount) AS "Airplane Avarage Fare"
FROM Airplane_Type at
JOIN Flight f ON at.Type_ID = f.Airplane_Type_ID
JOIN Airfare af ON f.Flight_ID = af.Flight_ID
GROUP BY at.Type_ID, at.Type_Name;




8. List employees_and their positions_at a specific_airport..

SELECT e.Employee_ID, e.First_Name ||' '||e.Last_Name AS "Full Name", e.Position, e.Age, a.Airport_Name
FROM Employee e
JOIN Airport a ON e.Airport_ID = a.Airport_ID
WHERE a.Airport_ID = 2;




9.Retrieve passenger details along with_their flights..

SELECT p.Passenger_ID, p.First_Name ||' ' ||p.Last_Name AS "Full Name", f.Flight_ID, r.Source_Airport_ID, r.Destination_Airport_ID
FROM Passenger p
JOIN Transaction t ON p.Passenger_ID = t.Passenger_ID
JOIN Flight f ON t.Flight_ID = f.Flight_ID
JOIN Route r ON f.Route_ID = r.Route_ID;


