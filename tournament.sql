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

create view standings as
    select distinct players.id, players.name, count(wins.winner) as wins,
    (count(wins.winner) + count(losses.loser)) as matches 
    from players 
    left join matches as wins on players.id = wins.winner
    left join matches as losses on players.id = losses.loser 
    group by players.id
    order by wins desc;


create table matches (
    id serial primary key,  
    winner integer references players (id), 
    loser integer references players (id) 
    );

