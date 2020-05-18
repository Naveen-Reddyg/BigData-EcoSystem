--creating partion table on data column
create External or partition_table(
    item_no int comment 'Item number',
    item_name string comment 'name of item',
    item_price decimal(20,5) comment 'Item price'
)
comment 'Partiton table'
partitioned by (order_date string comment 'item order date')
row format delimited
fields terminated by '\001'
stored as ORC 
location '/home/usr/data/order' 