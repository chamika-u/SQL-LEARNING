-- creating an user
CREATE ROLE mike WITH login;

-- creating an user with password
CREATE ROLE tommy WITH login PASSWORD 'tom@123';

-- creating users and giving access to them
CREATE ROLE chamika WITH login PASSWORD 'chamika-u' superuser; -- Giving all the access
