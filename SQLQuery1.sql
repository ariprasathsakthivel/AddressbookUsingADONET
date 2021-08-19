CREATE DATABASE AddressBook;

USE AddressBook;

CREATE TABLE AddressBookContacts(
firstName varchar(255),
lastName varchar(255),
address varchar(255),
city varchar(255),
state varchar(255),
zipCode int,
phoneNumber varchar(13),
email varchar(255)
);

INSERT INTO dbo.AddressBookContacts values
('Ariprasath', 'Sakthivel', '3/6, 4th main road', 'Bangalore', 'karnataka', '560085', '1235678900', 'ariprasath3@gmail.com');

UPDATE dbo.AddressBookContacts SET address='413, 5th main road' WHERE firstName='Ariprasath';