-- Create a database 
create DATABASE if not exists first_db;

-- Use the databse
use first_db;

-- there are two tables in hive
-- a) Managed(internal table)
-- b) External tables

-- create a managed table in the database
create table if not exists employee(
    id int comment 'Id of employee', 
    name string comment 'Name of Employee',
    sal float comment 'salary of employee')
    comment 'Employee table' 
    row format delimited 
    fields terminated by '';

