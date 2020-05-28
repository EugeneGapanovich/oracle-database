INSERT INTO SEASONS(SEASON_YEAR)
SELECT DISTINCT dt.CHAMPIONSHIP
FROM DATA_TABLE as dt;

INSERT INTO LEAGUES(NAME)
SELECT DISTINCT dt.LEAGUE
FROM DATA_TABLE as dt;

INSERT INTO TEAMS(YEAR_OF_FOUND, NAME)
SELECT distinct dt.FOUNDED_TEAM_1, dt.TEAM_1
FROM DATA_TABLE as dt;

INSERT INTO TEAMS(YEAR_OF_FOUND, NAME)
SELECT DISTINCT dt.FOUNDED_TEAM_2, dt.TEAM_2
FROM DATA_TABLE as dt;

INSERT INTO COACHES(YEAR_OF_FOUND)
SELECT DISTINCT dt.TRAINER_TEAM_1
FROM DATA_TABLE as dt;

INSERT INTO COACHES(NAME)
SELECT DISTINCT dt.TRAINER_TEAM_2
FROM DATA_TABLE as dt;

INSERT INTO EVENTS(EVENT, EVENT_TIME)
SELECT DISTINCT dt.EVENT, dt.EVENT_TIME
FROM DATA_TABLE as dt;

INSERT INTO MATCHES(DATE_OF_MATCH, AVG_PRICE, TICKETS_SOLD)
SELECT DISTINCT dt.DATE_TIME, dt.AVG_PRICE, dt.TICKETS_SOLD
FROM DATA_TABLE as dt;

INSERT INTO STADIUMS(CITY, CAPACITY, NAME)
SELECT DISTINCT dt.LOCATION, dt.CAPACITY, dt.VENUE
FROM DATA_TABLE as dt;

INSERT INTO PLAYERS(NAME, TEAM_NAME, POSITION)
SELECT DISTINCT dt.PLAYER_LAST_NAME, dt.PlAYER_TEAM, dt.POSITION
FROM DATA_TABLE as dt;