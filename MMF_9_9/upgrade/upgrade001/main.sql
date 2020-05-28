SET TIMING ON

SPOOL UPGRADE001_SCHEMA.LOG
SET SERVEROUTPUT ON

DEFINE USER_NAME = &&1

PROMPT Connecting to user &&USER_NAME

connect &&USER_NAME/oracle 

PROMPT Creating tables

@create_table_coaches.sql &&USER_NAME
@create_table_coaching.sql &&USER_NAME
@create_table_leagues.sql &&USER_NAME
@create_table_matches.sql &&USER_NAME
@create_table_player_statistics.sql &&USER_NAME
@create_table_players.sql &&USER_NAME
@create_table_seasons.sql &&USER_NAME
@create_table_squad.sql &&USER_NAME
@create_table_stadiums.sql &&USER_NAME
@create_table_team_statistics.sql &&USER_NAME
@create_table_teams.sql &&USER_NAME
@create_table_transfers.sql &&USER_NAME

PROMPT Creating constraints
@create_constraints.sql &&SCHEMA_NAME

SET SERVEROUTPUT OFF
SPOOL OFF

UNDEFINE USER_NAME