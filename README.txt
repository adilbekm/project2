OVERVIEW

This is project 2 of Udacity's Full Stack Nanodegree program titled
"Tournament Results" to develop a database schema to store the game 
matches between players. The project relies on Python and PostgreSQL to 
keep track of players and matches in a swiss-style game tournament. 


FILES

"tournament.sql" is where the database schema is, in the form of SQL 
create table commands. "tournament.py" is where the Python code with 
function definitions is. "tournament_test.py" contains unit tests that 
will test the functions defined in "tournament.py".


HOW TO RUN THIS APPLICATION

1. Copy and place all three files on your virtual machine (vagrant).
2. Execute command 'psql' to launch PosgreSQL terminal.
3. In psql, execute 'CREATE DATABASE tournament;' to create the database.
3. Connect to the database by executing '\c tournament'.
4. Execute command 'i\ tournament.sql' to execute SQL statements contained
   in file 'tournament.sql'. (Alternatively, you can execute the statements
   manually copying them from the file and pasting into psql terminal)
5. At this point, you can exit psql terminal by running '\q' command.
6. Execute command 'python tournament_test.py' to test all functions.
   If successfull, you should get a list numbered from 1 to 8 and the line
   saying "Success! All tests pass!". 
