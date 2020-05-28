DEFINE USER_NAME = &&1
DEFINE DATA_TBS_NAME = '&&USER_NAME._DATA'

CREATE TABLE COACHING (
	EVENT_ID NUMBER GENERATED ALWAYS AS IDENTITY INCREMENT BY 1 START WITH 1 MINVALUE 1 NOT NULL,
	SEASON_ID NUMBER,
	MATCH_ID NUMBER,
	TEAM_NAME VARCHAR2(100),
	PLAYER_ID NUMBER,
	EVENT VARCHAR2(100),
	EVENT_TIME NUMBER,
	CONSTRAINTS EVENT_ID_PK PRIMARY KEY EVENT_ID
) TABLESPACE &&DATA_TBS_NAME;