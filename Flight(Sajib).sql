CREATE TABLE Flight (
    Flight_ID NUMBER PRIMARY KEY,
    Route_ID NUMBER REFERENCES Route(Route_ID),
    Airplane_Type_ID NUMBER REFERENCES Airplane_Type(Type_ID),
    Departure_Time TIMESTAMP,
    Arrival_Time TIMESTAMP
);

DESCRIBE FLIGHT;


INSERT INTO Flight VALUES (1, 1, 1, TO_TIMESTAMP('2023-08-10 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-08-10 10:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Flight VALUES (2, 2, 2, TO_TIMESTAMP('2023-08-10 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-08-10 14:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Flight VALUES (3, 3, 3, TO_TIMESTAMP('2023-08-10 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-08-10 18:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Flight VALUES (4, 4, 4, TO_TIMESTAMP('2023-08-10 20:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-08-10 22:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Flight VALUES (5, 5, 5, TO_TIMESTAMP('2023-08-10 09:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-08-10 11:00:00', 'YYYY-MM-DD HH24:MI:SS'));

SELECT * FROM FLIGHT;
