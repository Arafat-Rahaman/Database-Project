CREATE TABLE Travels_on (
R_ID INT, 
F_ID VARCHAR(10), 
PRIMARY KEY (R_ID,F_ID), 
FOREIGN KEY(R_ID) REFERENCES Route(R_ID), 
FOREIGN KEY (F_ID) REFERENCES Flight(F_ID) 
);