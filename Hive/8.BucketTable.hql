-- creating a table with bucketing(clustering)

create table Employee(
    id int comment 'id of employee',
    name string comment 'name of employee',
    sal float comment 'salary of employee'
)
comment 'employee table'
partition by(dept string comment 'dept of employee')
cluster by (id)
