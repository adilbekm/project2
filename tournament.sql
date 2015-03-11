-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

create database tournament;

create table players (
    id serial primary key, 
    name varchar(50)   -- the player's full name
    );

create table standings (
    id integer references players (id), 
    name varchar(50),  -- the player's full name
    wins smallint,     -- the number of matched the player has won
    matches smallint   -- the number of matches the player has played
    );

create table matches (
    id serial primary key,  
    winner integer references players (id), 
    loser integer references players (id) 
    );

