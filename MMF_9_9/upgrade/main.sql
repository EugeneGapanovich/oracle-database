SET TIME ON
SET TIMING ON
SPOOL UPGRADE_SCHEMA.LOG

DEFINE USER_NAME = &&1

SET SERVEROUTPUT ON

connect "&&USER_NAME"/"oracle" 

SET SERVEROUTPUT OFF

UNDEFINE USER_NAME

SPOOL OFF