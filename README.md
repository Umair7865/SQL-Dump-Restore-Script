# SQL-Dump-Restore-Script

```
vim import_tables.sh
```
paste the script into import_tables.sh directory

```
chmod +x import_tables.sh
```
```
./import_tables.sh   path/of/directory/  database_name  password_of_mysql
```
example below:
```
./import_tables.sh testauth/  testauth  passwd123
```
### enter path of directory where all the tables are stored within a directory (just give directory name only)  after than give database name (if getting any error create database in mysql manually first) after than give password of mysql
