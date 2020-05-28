DEFINE USER_NAME = &&1
DEFINE DATA_TBS_NAME = '&&USER_NAME._DATA'

CREATE TABLE SQUAD (
	SQUAD_ID NUMBER,
	PLAYER_ID NUMBER NOT NULL,
	TEAM_ID NUMBER NOT NULL,
	MEMBERS_NUMBER NUMBER NOT NULL,
	MATCH_ID NUMBER NOT NULL,
	CONSTRAINTS SQUAD_ID_PK PRIMARY KEY SQUAD_ID
) TABLESPACE &&DATA_TBS_NAME;