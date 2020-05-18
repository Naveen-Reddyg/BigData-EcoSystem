-- External table creation 
create EXTERNAL table employ(
    id int comment 'Identification number',
    name string comment 'name of employ',
    sal float comment 'salary of employ')
    comment 'Employ table'
    row format delimited 
    fields terminated by '\t'
    location '/user/hive/warehouse/temp.db/empl';
    
