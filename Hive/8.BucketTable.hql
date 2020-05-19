-- creating a table with bucketing(clustering) with parttion
--bucketing will divide the data

create table Employee(
    id int comment 'id of employee',
    name string comment 'name of employee',
    sal float comment 'salary of employee'
)
comment 'employee table'
partition by(dept string comment 'dept of employee')
cluster by (id) into 3 buckets
row format delimited
fields terminated by '/000'
