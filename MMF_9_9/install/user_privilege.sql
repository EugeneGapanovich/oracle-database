DEFINE USER_NAME = &&1

GRANT CREATE SEQUENCE TO &&USER_NAME;
GRANT CREATE TABLE TO &&USER_NAME;
GRANT CREATE TYPE TO &&USER_NAME;
GRANT CREATE SYNONYM TO &&USER_NAME;
GRANT CREATE SESSION TO &&USER_NAME;
GRANT CREATE PROCEDURE TO &&USER_NAME;
GRANT CREATE TRIGGER TO &&USER_NAME;
GRANT CREATE ANY DIRECTORY TO &&USER_NAME;
