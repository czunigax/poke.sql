create SCHEMA proyecto2pok;

create table proyecto2pok.messages(
    id int IDENTITY (1,1) PRIMARY KEY, 
    [message] VARCHAR (255) not null
)