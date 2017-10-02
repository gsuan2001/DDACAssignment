/*create table booking(
bookingID int not null primary key IDENTITY(1,1) ,
trip varchar(10),
departure_destination varchar(30),
arrival_destination varchar(30),
booked_By varchar(50) not null);*/

create table destination(
destination_id varchar(4) not null primary key,
destination varchar(30),
country varchar(20));

