USE task1;

DROP TABLE Address;

DROP TABLE Person;

CREATE TABLE Person
(
	PersonID int auto_increment,
    FirstName varchar(255),
    LastName varchar(255),
    primary key (PersonId)
);

CREATE TABLE Address
(
	AddressId int auto_increment,
    PersonId int,
    City varchar(255),
    State varchar(255),
    primary key (AddressId)
);

TRUNCATE TABLE Person;

INSERT INTO Person
(PersonId, LastName, FirstName)
VALUES
(1, 'Wang', 'Allen');

TRUNCATE TABLE Address;

INSERT INTO Address
(AddressId, PersonId, City, State)
VALUES
(1, 2, 'New York City', 'New York');

SELECT *
FROM
Address;

SELECT
FirstName,
LastName,
City,
State
FROM
Person, Address;























