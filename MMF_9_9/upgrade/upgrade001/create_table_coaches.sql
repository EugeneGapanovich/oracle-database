DEFINE USER_NAME = &&1
DEFINE DATA_TBS_NAME = '&&USER_NAME._DATA'

CREATE TABLE COACHES (
	COACH_ID NUMBER GENERATED ALWAYS AS IDENTITY INCREMENT BY 1 START WITH 1 MINVALUE 1 NOT NULL,
	NAME VARCHAR2(100),
	BIRTHDAY DATE,
	COACH_RANK VARCHAR2(100),
	CONSTRAINTS COACH_ID_PK PRIMARY KEY COACH_ID
) TABLESPACE &&DATA_TBS_NAME;