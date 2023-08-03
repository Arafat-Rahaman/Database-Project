CREATE TABLE Airplane_type (
      A_ID INT, 
      Capacity INT,
      Weight INT, 
      Company VARCHAR(20), 
      PRIMARY KEY(A_ID)
);


CREATE TABLE Route (
    R_ID INT,
    R_type VARCHAR(20), 
    Destination VARCHAR(20),
    Take_of_Point VARCHAR(20), 
    PRIMARY KEY(R_ID) 
);
