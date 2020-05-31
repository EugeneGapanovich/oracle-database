SET SERVEROUTPUT ON;

DECLARE countOfRows NUMBER;

BEGIN

SELECT COUNT(*) INTO countOfRows FROM COACHES;
DBMS_OUTPUT.PUT_LINE('COACHES - count of rows: ' || countOfRows);

SELECT COUNT(*) INTO countOfRows FROM LEAGUES;
DBMS_OUTPUT.PUT_LINE('LEAGUES - count of rows: ' || countOfRows);

SELECT COUNT(*) INTO countOfRows FROM MATCHES;
DBMS_OUTPUT.PUT_LINE('MATCHES - count of rows: ' || countOfRows);

SELECT COUNT(*) INTO countOfRows FROM PLAYER_STATISTICS;
DBMS_OUTPUT.PUT_LINE('PLAYER_STATISTICS - count of rows: ' || countOfRows);

SELECT COUNT(*) INTO countOfRows FROM PLAYERS;
DBMS_OUTPUT.PUT_LINE('PLAYERS - count of rows: ' || countOfRows);

SELECT COUNT(*) INTO countOfRows FROM SEASONS;
DBMS_OUTPUT.PUT_LINE('SEASONS - count of rows: ' || countOfRows);

SELECT COUNT(*) INTO countOfRows FROM SEASONS;
DBMS_OUTPUT.PUT_LINE('SEASONS - count of rows: ' || countOfRows);

SELECT COUNT(*) INTO countOfRows FROM SQUAD;
DBMS_OUTPUT.PUT_LINE('SQUAD - count of rows: ' || countOfRows);

SELECT COUNT(*) INTO countOfRows FROM STADIUMS;
DBMS_OUTPUT.PUT_LINE('STADIUMS - count of rows: ' || countOfRows);

SELECT COUNT(*) INTO countOfRows FROM TEAM_STATISTICS;
DBMS_OUTPUT.PUT_LINE('TEAM_STATISTICS - count of rows: ' || countOfRows);

SELECT COUNT(*) INTO countOfRows FROM TEAMS;
DBMS_OUTPUT.PUT_LINE('TEAMS - count of rows: ' || countOfRows);

SELECT COUNT(*) INTO countOfRows FROM TRANSFERS;
DBMS_OUTPUT.PUT_LINE('TRANSFERS - count of rows: ' || countOfRows);

SELECT COUNT(*) INTO countOfRows FROM EVENTS;
DBMS_OUTPUT.PUT_LINE('EVENTS - count of rows: ' || countOfRows);

END;