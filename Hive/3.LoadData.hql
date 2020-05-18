-- there are 2 ways we can load the data into hive tables
-- 1) By using local file system
-- 2) By using hdfs

-- 1)By using the local file system
--load data statement

load data local inpath '/home/temp/emp1' into table employee;



-- 2) By using hdfs
-- for this first we need toi create a table 

create table student( id int, name string,school string,fee float)
    row format delimited 
    fields terminated by '\t';

--after creating table we copy data from one location to the table location
hadoop fs -put stdnt2 stdnt3;

