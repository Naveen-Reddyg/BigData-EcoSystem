--creating a database
create DATABASE if not exists temp;

-- To see the database created or not we can use show keyword
show databases;

--Alter Database properties
alter database temp set DBProperties ('Date' = '2020-01-01');

--alter database location
alter database temp set location hdfs_path;

--alter databse owner
alter database temp set OWNER = user_role;

--inorder to use the database use database
use temp;

-- to drop the database we need to use drop
drop database temp;

-- before dropping the database we need to come out of that databse
use default;

-- once you select the default or other database we can delete the databse
drop database temp;