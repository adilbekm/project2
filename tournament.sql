-- Table definitions for the tournament project.

-- Prior to running these commands, create and connect to
-- database "tournament" by executing the following in psql:
-- CREATE DATABASE tournament;
-- \c tournament

-- Table "players" holds player information, where "name"
-- will hold the player's full name
CREATE TABLE players (
    id SERIAL PRIMARY KEY, 
    name VARCHAR(50)
    );

-- Table "matches" holds information on match results
CREATE TABLE matches (
    id SERIAL PRIMARY KEY,  
    winner INTEGER REFERENCES players(id), 
    loser INTEGER REFERENCES players(id) 
    );

-- View "standings" is to get the current ranking of all players
-- from best to worst
CREATE VIEW standings AS
    SELECT DISTINCT players.id, players.name, count(wins.winner) AS wins,
    (count(wins.winner) + count(losses.loser)) AS matches 
    FROM players 
    LEFT JOIN matches AS wins ON players.id = wins.winner
    LEFT JOIN matches AS losses ON players.id = losses.loser 
    GROUP BY players.id
    ORDER BY wins DESC;
