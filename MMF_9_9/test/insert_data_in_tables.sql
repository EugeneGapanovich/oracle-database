INSERT INTO SEASONS(SEASON_YEAR)
SELECT DISTINCT dt.CHAMPIONSHIP
FROM DATA_TABLE dt;

INSERT INTO LEAGUES(NAME)
SELECT DISTINCT dt.LEAGUE
FROM DATA_TABLE dt;

INSERT INTO PLAYERS(NAME, TEAM_NAME, POSITION)
SELECT DISTINCT dt.PLAYER_LAST_NAME, dt.PlAYER_TEAM, dt.POSITION
FROM DATA_TABLE dt;

INSERT INTO TEAMS(YEAR_OF_FOUNDATION, NAME, LEAGUE_ID)
SELECT distinct dt.FOUNDED_TEAM_1, dt.TEAM_1, LS.LEAGUE_ID
FROM DATA_TABLE dt
LEFT JOIN LEAGUES LS ON dt.LEAGUE = LS.NAME;

INSERT INTO TEAMS(YEAR_OF_FOUNDATION, NAME, LEAGUE_ID)
SELECT DISTINCT dt.FOUNDED_TEAM_2, dt.TEAM_2, LS.LEAGUE_ID
FROM DATA_TABLE dt
LEFT JOIN LEAGUES LS ON dt.LEAGUE = LS.NAME
WHERE dt.TEAM_2 NOT IN (SELECT TEAMS.NAME FROM TEAMS);

INSERT INTO STADIUMS(CITY, CAPACITY, NAME, TEAM_ID)
SELECT DISTINCT dt.LOCATION, dt.CAPACITY, dt.VENUE, TS.TEAM_ID
FROM DATA_TABLE dt
LEFT JOIN TEAMS TS ON dt.Team_1 = TS.NAME;

INSERT INTO COACHES(NAME, TEAM_ID, SEASON_ID)
SELECT DISTINCT dt.TRAINER_TEAM_1, TS.TEAM_ID, S.SEASON_ID
FROM DATA_TABLE dt
LEFT JOIN TEAMS TS ON dt.Team_1 = TS.NAME
LEFT JOIN SEASONS S ON dt.CHAMPIONSHIP = S.SEASON_YEAR;

INSERT INTO COACHES(NAME, TEAM_ID, SEASON_ID)
SELECT DISTINCT dt.TRAINER_TEAM_2, TS.TEAM_ID, S.SEASON_ID
FROM DATA_TABLE dt
LEFT JOIN TEAMS TS ON dt.Team_2 = TS.NAME
LEFT JOIN SEASONS S ON dt.CHAMPIONSHIP = S.SEASON_YEAR
WHERE dt.TRAINER_TEAM_2 NOT IN (SELECT COACHES.NAME FROM COACHES);

INSERT INTO MATCHES(SEASON_ID, HOME_TEAM_NAME, VISITOR_TEAM_NAME, DATE_OF_MATCH, AVG_PRICE, TICKETS_SOLD)
SELECT DISTINCT S.SEASON_ID, dt.TEAM_1, dt.TEAM_2, dt.DATE_TIME, dt.AVG_PRICE, dt.TICKETS_SOLD
FROM DATA_TABLE dt
LEFT JOIN SEASONS S ON dt.CHAMPIONSHIP = S.SEASON_YEAR;

INSERT INTO EVENTS(PLAYER_NAME, TEAM_NAME, EVENT, EVENT_TIME, MATCH_ID, SEASON_ID)
SELECT dt.PLAYER_LAST_NAME, dt.PLAYER_TEAM, dt.EVENT, dt.EVENT_TIME, M.MATCH_ID, M.SEASON_ID
FROM DATA_TABLE dt
LEFT JOIN MATCHES M ON M.HOME_TEAM_NAME = dt.TEAM_1 AND M.VISITOR_TEAM_NAME = dt.TEAM_2;

commit;