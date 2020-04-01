DEFINE USER_NAME = &&1
DEFINE TBS_LOCATION = &&2
DEFINE DATA_TBS_NAME = '&&USER_NAME._DATA'
DEFINE DATA_FILENAME = '&&TBS_LOCATION&&DATA_TBS_NAME..dbf'

PROMPT &&DATA_TBS_NAME
PROMPT &&DATA_FILENAME

CREATE TABLESPACE &&DATA_TBS_NAME
    DATAFILE 
        '&&DATA_FILENAME' SIZE 10M AUTOEXTEND ON NEXT 10M MAXSIZE 10G;

UNDEFINE USER_NAME;
UNDEFINE TBS_LOCATION;
UNDEFINE DATA_TBS_NAME;
UNDEFINE DATA_FILENAME;