DEFINE TABLESPACE_NAME = &&1;

DROP TABLESPACE &&TABLESPACE_NAME
INCLUDING CONTENTS AND DATAFILES
CASCADE CONSTRAINTS;
UNDEFINE TABLESPACE_NAME;