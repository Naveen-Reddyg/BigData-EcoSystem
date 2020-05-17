-- Create a database 
create DATABASE if not exists first_db;

-- Use the databse
use first_db;

-- there are two tables in hive
-- a) Managed(internal table)
-- b) External tables

-- create a managed table in the database
create table if not exists employee(id int, name string,sal float) 
    row format delimited 
    fields terminated by '';

