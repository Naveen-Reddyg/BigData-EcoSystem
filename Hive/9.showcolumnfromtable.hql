-- show columns
create DATABASE test_db;

use test_db;

show databases;

create table test_tbl(
    col1 int,
    col2 int,
    col3 int,
    cola int,
    colb int,
    colc int,
    a int,
    b int,
    c int
)

show tables;

show views;

-- show all columns from table
show columns from test_tbl;

--shows all columns
show columns from test_tbl '*';

--show columns start with col
show columns in test_tbl 'col*';

--shows columns ending with c
show columns from test_tbl '*c';

--show columns col1 or col2 from table
show columns from test_tbl like "col1|col2";

--show partitions on table
show partitions test_tbl;

