USE ROLE accountadmin;

---> create a role
CREATE ROLE tasty_only;

---> see what privileges this new role has
SHOW GRANTS TO ROLE tasty_only;

---> see what privileges an auto-generated role has
SHOW GRANTS TO ROLE accountadmin;

---> grant a role to a specific user
GRANT ROLE tasty_de TO USER [username];

---> use a role
USE ROLE tasty_de;

---> try creating a warehouse with this new role
CREATE WAREHOUSE tasty_de_test;

USE ROLE accountadmin;

---> grant the create warehouse privilege to the tasty_de role
GRANT CREATE WAREHOUSE ON ACCOUNT TO ROLE tasty_only;

---> show all of the privileges the tasty_de role has
SHOW GRANTS TO ROLE tasty_only;

USE ROLE tasty_de;

---> test to see whether tasty_de can create a warehouse
CREATE WAREHOUSE tasty_de_test;

---> learn more about the privileges each of the following auto-generated roles has

SHOW GRANTS TO ROLE securityadmin;

SHOW GRANTS TO ROLE useradmin;

SHOW GRANTS TO ROLE sysadmin;

SHOW GRANTS TO ROLE public;



select current_user();


GRANT ROLE tasty_only TO USER STEVEN7296;


use role tasty_only;

CREATE WAREHOUSE tasty_de_test_01;


use role accountadmin;
show grants to user steven7296;