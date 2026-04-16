-- CREATING AN USER
CREATE ROLE mike WITH login;


-- CREATING USERS WITH PASSWORD
CREATE ROLE tommy WITH login PASSWORD 'tom@123';


-- CREATING USERS AND GIVING ACCESS TO THEM
CREATE ROLE chamika WITH login PASSWORD 'chamika-u' superuser; -- Giving all the access

CREATE ROLE chamika1 WITH login PASSWORD 'chamika-u' createdb; -- Giving access to create databases 

CREATE ROLE chamika2 WITH login PASSWORD 'chamika-u' createrole; -- Giving access to assign rules to others

CREATE ROLE chamika3 WITH login PASSWORD 'chamika-u' VALID UNTIL '2026-09-29'; -- Giving access to the user until a specific date

CREATE ROLE chamika4 WITH login PASSWORD 'chamika-u' CONNECTION LIMIT 10; -- Giving access to the user with a limit of 10 connections

CREATE ROLE chamika5 WITH login PASSWORD 'chamika-u' IN ROLE chamika4; -- Giving access to the user with the same access as chamika4

CREATE USER chamika6 WITH PASSWORD 'chamika-u'; -- creating an user with the same access as chamika4


-- GRANTING AND REVOKING USER PERMISSIONS
-- Granting
GRANT SELECT ON customer TO chamika1; -- Granting select permission on customer table to chamika1
GRANT DELETE, INSERT ON customer TO chamika1; -- Granting delete and insert permissions on customer table to chamika1

GRANT SELECT ON ALL TABLES IN SCHEMA PUBLIC TO chamika1; -- Granting select permission on all tables in public schema to chamika1
GRANT SELECT ON customer TO chamika1 WITH GRANT OPTION; -- Granting select permission on customer table to chamika1 with the ability to grant the same permission to others

-- Revoking
REVOKE SELECT ON customer FROM chamika1; -- Revoking select permission on customer table from chamika1
REVOKE DELETE, INSERT ON customer FROM chamika1; -- Revoking delete and insert permissions on customer table from chamika1


-- USING ROLES FOR PERMISSION MANAGEMENT
CREATE ROLE sales_team; -- Creating a role for the sales team
CREATE ROLE admins; -- Creating a role for the admins
GRANT SELECT ON ALL TABLES IN SCHEMA PUBLIC TO sales_team; -- Granting select permission on all tables in public schema to sales_team