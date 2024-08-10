# 一.如何高效修改表，需要UPDATE和SECLET连用
# 二.如何构建数据库
1.先分析主键外键关系
# 三.NOT NULL的误区
我们可以在新建列时设置为NOT NULL，但是如果在已有列变量的情况下我们要先对齐赋值在设置为NOT NULL
# 四. join的使用
join用于连接两个表，通常用于先根据主外键关系连接表然后在新表中SELECT
 
{
  "database": {
    "create": "CREATE DATABASE database_name;",
    "drop": "DROP DATABASE database_name;",
    "rename": "ALTER DATABASE database_name RENAME TO new_name;"
  },
  "table": {
    "create": "CREATE TABLE table_name();",
    "drop": "DROP TABLE table_name;",
    "rename": "ALTER TABLE table_name RENAME TO new_name;"
  },
# insert主要是对行的增减操作
# update主要是对行中的某个值进行操作
# ALTER TABLE主要是操作列，设置主键，设置外键
  "row": {
    "insert": "INSERT INTO table_name(columns) VALUES(values);",
    "update": "UPDATE table_name SET column_name = new_value WHERE condition;",
    **修改列中的所有行**
     UPDATE public.properties p
      SET type = t.type
      FROM public.types t
      WHERE p.type_id = t.type_id;    

    "delete": "DELETE FROM table_name WHERE condition;"
  **删除特定的某一行**
  DELETE FROM public.properties WHERE atomic_number = 1000;
  **删除多行**
  DELETE FROM public.properties WHERE atomic_number = (1,2) 等效于atomic_number = 1 OR atomic_number = 2 ;

  },
  "column": {
    "add": "ALTER TABLE table_name ADD COLUMN column_name;",
    "drop": "ALTER TABLE table_name DROP COLUMN column_name;",
    "rename": "ALTER TABLE table_name RENAME COLUMN column_name TO new_name;",
    "primary_key": "ALTER TABLE table_name ADD PRIMARY KEY(column_name);",
    "foreign_key": "ALTER TABLE table_name ADD FOREIGN KEY(column_name) REFERENCES table_name(column_name);"
  }
}
