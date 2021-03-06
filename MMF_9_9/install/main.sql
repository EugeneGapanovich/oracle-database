SET TIME ON
SET TIMING ON
SET APPINFO ON
 
SPOOL INSTALL_SCHEMA.LOG

DEFINE USER_NAME = &&1
DEFINE TBS_LOCATION = &&2

SET SERVEROUTPUT ON

PROMPT "EXECUTE create_tablespace.sql for data tablespace"
PROMPT "USERNAME: &&USER_NAME"
PROMPT "TABLESPACE LOCATION: &&TBS_LOCATION"

@create_tablespace &&USER_NAME &&TBS_LOCATION

PROMPT 'DATA AND INDEX TABLESPACES CREATED SUCCESFULLY'

PROMPT 'EXECUTING create_user.sql'

@create_user &&USER_NAME 

PROMPT 'USER &&USER_NAME CREATED SUCCESFULLY'

PROMPT 'EXECUTING user_privilege.sql'

@user_privilege &&USER_NAME 

PROMPT 'PRIVILIGES TO &&USER_NAME CREATED SUCCESFULLY'

SET SERVEROUTPUT OFF

UNDEFINE USER_NAME
UNDEFINE TBS_LOCATION


SPOOL OFF