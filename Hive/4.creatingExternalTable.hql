create EXTERNAL table employ(id int, name string,sal float)
    row format delimited 
    fields terminated by '\t'
    location '/user/hive/warehouse/temp.db/empl';
    