SET TIMING ON

SPOOL UPGRADE001_SCHEMA.LOG
SET SERVEROUTPUT ON

DEFINE USER_NAME = &&1

PROMPT Connecting to user &&USER_NAME

connect &&USER_NAME/oracle 

PROMPT Creating tables

@create_table_coaches.sql
@create_table_coaching.sql
@create_table_leagues.sql
@create_table_matches.sql
@create_table_player_statistics.sql
@create_table_players.sql
@create_table_seasons.sql
@create_table_squad.sql
@create_table_stadiums.sql
@create_table_team_statistics.sql
@create_table_teams.sql
@create_table_transfers.sql
@create_table_events.sql

PROMPT Creating constraints
@create_constraints.sql &&USER_NAME

SET SERVEROUTPUT OFF
SPOOL OFF

UNDEFINE USER_NAME