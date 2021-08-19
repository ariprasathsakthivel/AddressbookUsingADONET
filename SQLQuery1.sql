CREATE DATABASE AddressBook;

USE AddressBook;

CREATE TABLE AddressBookContacts(
firstName varchar(255) unique,
lastName varchar(255),
address varchar(255),
city varchar(255),
state varchar(255),
zipCode int,
phoneNumber varchar(13),
email varchar(255)
);

INSERT INTO dbo.AddressBookContacts values
('Ariprasath', 'Sakthivel', '3/6, 4th main road', 'Bangalore', 'karnataka', 560085, '1235678900', 'ariprasath3@gmail.com'),
('Raj', 'Kumar', '51, 2nd main road', 'Bangalore', 'karnataka', 560035, '12121215536', 'adas@gmail.com'),
('Ragu', 'ram', '50, 1st main', 'chennai', 'Tamil Nadu', 636808, '1212333655', 'abc@gmail.com')

UPDATE dbo.AddressBookContacts SET address='413, 5th main road' WHERE firstName='Ariprasath';

DELETE FROM dbo.AddressBookContacts WHERE firstName='Raj';

SELECT * FROM dbo.AddressBookContacts WHERE city='Bangalore' OR state='Tamil Nadu';

SELECT city, COUNT(city) FROM dbo.AddressBookContacts GROUP BY city;

SELECT state, COUNT(state) FROM dbo.AddressBookContacts GROUP BY state;

SELECT * FROM dbo.AddressBookContacts WHERE city='Bangalore' ORDER BY firstName ASC;