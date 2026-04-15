-- creating an user
CREATE ROLE mike WITH login;

-- creating an user with password
CREATE ROLE tommy WITH login PASSWORD 'tom@123';

-- creating users and giving access to them
CREATE ROLE chamika WITH login PASSWORD 'chamika-u' superuser; -- Giving all the access

CREATE ROLE chamika1 WITH login PASSWORD 'chamika-u' createdb; -- Giving access to create databases 

CREATE ROLE chamika2 WITH login PASSWORD 'chamika-u' createrole; -- Giving access to assign rules to others

CREATE ROLE chamika3 WITH login PASSWORD 'chamika-u' VALID UNTIL '2026-09-29'; -- Giving access to the user until a specific date

