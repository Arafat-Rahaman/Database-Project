CREATE TABLE Countries (
    Country_ID NUMBER,
    Country_Name VARCHAR2(50),
    PRIMARY KEY (Country_ID)
);

desc Countries ;

insert all
into Countries (Country_ID, Country_Name) values (10001,'AMERICA')
into Countries (Country_ID, Country_Name) values (10002,'DUBAI')
into Countries (Country_ID, Country_Name) values (10003,'BRAZIL')
into Countries (Country_ID, Country_Name) values (10004,'JAPAN')
into Countries (Country_ID, Country_Name) values (10005,'CANADA')
SELECT * FROM dual;


SELECT *
FROM Countries;
