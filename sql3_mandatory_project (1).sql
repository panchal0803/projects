create database grosevenor_new;

CREATE TABLE hotel ( hotel_no CHAR(4) NOT NULL , name VARCHAR(20) NOT NULL, address
VARCHAR(50) NOT NULL,primary key (hotel_no));

insert into hotel values('fb01', 'Grosvenor', 'London'),
('fb02', 'Grosvenor', 'manchester'),
('ch01', 'Grosvenor', 'London'),
('ch02', 'Grosvenor', 'oval'),
('dc01', 'Grosvenor', 'leeds');

select * from hotel;

select * from room;
select * from GUEST;
select * from BOOKING;

CREATE TABLE room ( room_no VARCHAR(4) NOT NULL, hotel_no CHAR(4) NOT NULL, type CHAR(1)
NOT NULL, price DECIMAL(5,2) NOT NULL,primary key (room_no, hotel_no),
foreign key (hotel_no) REFERENCES hotel(hotel_no)
);

insert into room values(501, 'fb01', 's', 19);
insert into room values(601, 'fb01', 'd', 29);
insert into room values(701, 'fb01', 'f', 39);
insert into room values(1001, 'fb01', 's', 58);
insert into room values(1101, 'fb01', 'd', 86);
insert into room values(1001, 'ch01', 's', 29.99);
insert into room values(1101, 'ch01', 'f', 59.99);
insert into room values(701, 'ch01', 's', 10);
insert into room values(801, 'ch01', 'd', 15);
insert into room values(901, 'ch01', 's', 11);
insert into room values(901, 'dc01', 's', 18);
insert into room values(905, 'dc01', 'd', 26);
insert into room values(1001, 'dc01', 'f', 30);
insert into room values(1101, 'dc01', 'd', 28);
insert into room values(1202, 'dc01', 'f', 80);
insert into room values(101, 'fb02', 's', 17);
insert into room values(201, 'fb02', 'd', 27);
insert into room values(301, 'fb02', 'f', 39);
insert into room values(311, 'fb02', 's', 50);
insert into room values(801, 'fb02', 'd', 83);
insert into room values(001, 'ch02', 's', 14);
insert into room values(002, 'ch02', 'd', 29);
insert into room values(010, 'ch02', 'f', 33);
insert into room values(019, 'ch02', 's', 54);
insert into room values(032, 'ch02', 'd', 88);



CREATE TABLE guest ( guest_no CHAR(4) NOT NULL, name VARCHAR(20) NOT NULL, address
VARCHAR(50) NOT NULL);


insert into guest values(1001, 'G1', ' London');
insert into guest values(1002, 'G2', ' PRESTON');
insert into guest values(1003, 'G3', 'BELFAST');
insert into guest values(1004, 'G4', 'MANCHESTER');
insert into guest values(1005, 'G5', 'DERBY');
insert into guest values(1006, 'G6', 'DERBY');
insert into guest values(1007, 'G7', 'GLASGOW');
insert into guest values(1008, 'G8', ' BANGOR');
insert into guest values(1009, 'G9', ' GLASGOW');
insert into guest values(1010, 'G10', 'DURHAM');
insert into guest values(1011, 'G11', 'MANCHESTER');
insert into guest values(1012, 'G12', 'ELY');
insert into guest values(1013, 'G13', 'PRESTON');
insert into guest values(1014, 'G14', 'GLASGOW');
 insert into guest values(1015, 'G15', ' London');
insert into guest values(1016, 'G16', ' BANGOR');
insert into guest values(1017, 'G17', 'PRESTON');
insert into guest values(1018, 'G18', 'MANCHESTER');
insert into guest values(1019, 'G19', 'LEEDS');
insert into guest values(1020, 'G20', 'OVAL');
insert into guest values(1021, 'G21', 'LONDON');
 insert into guest values(1022, 'G22', ' LEEDS');
insert into guest values(1023, 'G23', ' CANTERBURY');
insert into guest values(1024, 'G24', 'DERBY');
insert into guest values(1025, 'G25', 'GLASGOW');
insert into guest values(1026, 'G26', 'BANGOR');
insert into guest values(1027, 'G27', 'ELY');
insert into guest values(1028, 'G28', 'LONDON');
 insert into guest values(1029, 'G29', ' MANCHESTER');
insert into guest values(1030, 'G30', ' DURHAM');
insert into guest values(1031, 'G31', 'BANGOR');
insert into guest values(1032, 'G32', 'MANCHESTER');
insert into guest values(1033, 'G33', 'LEEDS');
insert into guest values(1034, 'G34', 'DURHAM');
insert into guest values(1035, 'G35', 'LONDON');
 insert into guest values(1036, 'G36', ' ELY');
insert into guest values(1037, 'G37', ' CANTERBURY');
insert into guest values(1038, 'G38', 'LEEDS');
insert into guest values(1039, 'G39', 'BANGOR');
insert into guest values(1040, 'G40', 'LEEDS');
insert into guest values(1041, 'G41', 'CANTERBURY');
insert into guest values(1042, 'G42', 'LONDON');
 insert into guest values(1043, 'G43', ' LEEDS');
insert into guest values(1044, 'G44', ' CANTERBURY');
insert into guest values(1045, 'G45', 'LEEDS');
insert into guest values(1046, 'G46', 'BANGOR');
insert into guest values(1047, 'G47', 'LEEDS');
insert into guest values(1048, 'G48', 'DURHAM');
insert into guest values(1049, 'G49', 'LONDON');
insert into guest values(1050, 'G50', 'ELY');
 
 
 
 CREATE TABLE booking (hotel_no CHAR(4) NOT NULL, guest_no CHAR(4) NOT NULL, date_from
DATETIME NOT NULL, date_to DATETIME NULL, room_no CHAR(4) NOT NULL); 

insert into booking values('fb01', 1001, '1999-08-01', '1999-08-03', 501);
insert into booking values('fb01', 1004, '1999-08-15', '1999-08-18', 601);
insert into booking values('fb01', 1007, '1999-08-02', '1999-08-07', 701);
insert into booking values('fb01', 1010, '1999-09-04', '1999-09-29', 1001);
insert into booking values('fb01', 1002, '1999-10-01', null, 1101);
insert into booking values('fb02',1005, '1999-11-05', '1999-11-09', 101);
insert into booking values('fb02', 1003, '1999-12-12', '1999-12-13', 201);
insert into booking values('fb02', 1008, '1999-12-21', null, 301);
insert into booking values('fb02', 1006, '1999-11-25', '1999-11-29', 311);
insert into booking values('fb02', 1009, '1999-10-13', '1999-10-19', 801);
insert into booking values('ch01', 1011, '1999-12-20', null, 1001);
insert into booking values('ch01', 1017, '1999-12-01', '1999-12-08', 1101);
insert into booking values('ch01', 1014, '1999-09-15', '1999-09-19', 701);
insert into booking values('ch01', 1020, '1999-08-02', '1999-08-07', 801);
insert into booking values('ch01', 1023, '1999-12-04', '1999-12-29', 901);
insert into booking values('ch02', 1026, '1999-10-01', null, 001);
insert into booking values('ch02', 1029, '1999-11-05', '1999-11-10', 002);
insert into booking values('ch02', 1032, '1999-10-12', '1999-10-17', 010);
insert into booking values('ch02', 1035, '1999-09-21', null, 032);
insert into booking values('dc01', 1038, '1999-11-25', '1999-12-06', 901);
insert into booking values('dc01', 1041, '1999-09-13', '1999-09-15', 905);
insert into booking values('dc01', 1044, '1999-010-20', null, 1001);
insert into booking values('dc01', 1047, '1999-11-01', '1999-12-08', 1101);
insert into booking values('dc01', 1050, '1999-08-15', '1999-08-19', 1202);
insert into booking values('fb01', 1012, '2000-01-02', '2000-01-07', 501);
insert into booking values('fb01', 1015, '2000-01-04', '2000-01-29', 601);
insert into booking values('fb01', 1018, '2000-02-01', null, 701);
insert into booking values('fb01', 1021, '2000-01-05', '2000-01-14', 1001);
insert into booking values('fb01', 1024, '2000-03-12', '2000-04-27', 1101);
insert into booking values('fb02', 1027, '2000-02-21', null, 101);
insert into booking values('fb02', 1030, '2000-05-25', '2000-05-30', 201);
insert into booking values('fb02', 1033, '2000-06-13', '2000-06-15', 301);
insert into booking values('fb02', 1036, '2000-05-20', null, 311);
insert into booking values('fb02', 1039, '2000-08-01', '2000-08-17', 801);
insert into booking values('ch01', 1042, '2000-08-15', '2000-08-17', 1001);
insert into booking values('ch01', 1045, '2000-08-02', '2000-08-07', 1101);
insert into booking values('ch01', 1048, '2000-01-04', '2000-01-29', 701);
insert into booking values('ch01', 1013, '2000-02-01', null, 801);
insert into booking values('ch01', 1016, '2000-07-05', '2000-07-09', 901);
insert into booking values('ch02', 1019, '2000-08-12', '2000-08-19', 001);
insert into booking values('ch02', 1022, '2000-03-21', null, 002);
insert into booking values('ch02', 1025, '2000-04-25', '2000-04-26', 010);
insert into booking values('ch02', 1028, '2000-01-13', '2000-02-15', 019);
insert into booking values('ch02', 1031, '2000-02-20', null, 032);
insert into booking values('dc01', 1034, '2000-03-01', '2000-03-05', 901);
insert into booking values('dc01', 1037, '2000-04-15', '2000-04-10', 905);
insert into booking values('dc01', 1040, '2000-08-02', '2000-08-07', 1001);
insert into booking values('dc01', 1043, '2000-06-04', '2000-06-29', 1101);
insert into booking values('dc01', 1046, '2000-03-01', null, 1202);
insert into booking values('fb02', 1049, '2000-02-05', '2000-02-21', 101);
insert into booking values('fb01', 1017, '2000-01-12', '2000-01-14', 701);
insert into booking values('ch01', 1028, '2000-02-21', null, 701);
insert into booking values('ch02', 1036, '2000-08-25', '2000-08-28', 032);
insert into booking values('dc01', 1041, '2000-04-13', '2000-04-15', 905);
insert into booking values('dc01', 1050, '2000-04-20', null, 1202);



CREATE TABLE booking_old(
hotel_no CHAR(4) NOT NULL,
guest_no CHAR(4) NOT NULL,
date_from DATETIME NOT NULL,
date_to DATETIME NULL,
room_no VARCHAR(4) NOT NULL
);

 select * from booking_old;

INSERT INTO booking_old(
SELECT * FROM booking
WHERE date_to < '2000-01-01'and date_from< '2000-01-01' );

SET SQL_SAFE_UPDATES = 0;

DELETE FROM booking
WHERE date_to < '2000-01-01' and date_from< '2000-01-01' ;


 
 
-- Simple Queries

-- 1. List full details of all hotels.
SELECT * FROM hotel;

-- 2. List full details of all hotels in London.
SELECT * FROM hotel WHERE address LIKE '%London%';


-- 3. List the names and addresses of all guests in London, alphabetically ordered by name.
SELECT name, address
FROM guest
WHERE address LIKE '%London%'
ORDER BY name;

 

-- 4. List all double or family rooms with a price below £40.00 per night, in ascending order of price.
SELECT * FROM room
WHERE price < 40 AND type IN ('D', 'F')
ORDER BY price;



-- 5. List the bookings for which no date_to has been specified.
SELECT * FROM booking WHERE date_to IS NULL;



-- Aggregate Functions

-- 1. How many hotels are there?
select count(hotel_no) from hotel;

-- 2. What is the average price of a room?
select avg(price) from room;

-- 3. What is the total revenue per night from all double rooms?
select sum(price)
from room 
where type ='d';



-- 4. How many different guests have made bookings for August?
 select count(distinct(guest_no)) 
 from booking
 where date_to > '2000-07-31' and date_to <'2000-09-01';
 
--  Grouping

-- 1. List the number of rooms in each hotel.
SELECT hotel_no, COUNT(room_no)  FROM room
GROUP BY hotel_no;

-- 2. List the number of rooms in each hotel in London.
SELECT hotel.hotel_no, COUNT(room_no)
FROM hotel, room
WHERE room.hotel_no = hotel.hotel_no
AND address LIKE '%London%'
GROUP BY hotel_no;


-- 3. What is the average number of bookings for each hotel in August?



-- 4. What is the most commonly booked room type for each hotel in London?

-- 5. What is the lost income from unoccupied rooms at each hotel today?
--  

-- Subqueries and Joins

-- 1. List the price and type of all rooms at the Grosvenor Hotel.



-- 2. List all guests currently staying at the Grosvenor Hotel.

-- 3. List the details of all rooms at the Grosvenor Hotel, including the name of the guest staying in the

-- room, if the room is occupied.

-- 4. What is the total income from bookings for the Grosvenor Hotel today?

-- 5. List the rooms that are currently unoccupied at the Grosvenor Hotel.

-- 6. What is the lost income from unoccupied rooms at the Grosvenor Hotel?

 select * from hotel;

select * from room;
select * from GUEST;
select * from BOOKING;
