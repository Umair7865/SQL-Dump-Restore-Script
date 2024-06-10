# SQL-Dump-Restore-Script

```
git clone https://github.com/Umair7865/SQL-Dump-Restore-Script.git
cd SQL-Dump-Restore-Script
chmod +x import_tables.sh

```
No need to modify this script, just run the below command with path of directory where tables of database is located and with database name along with password
```
./import_tables.sh   path/of/directory/  database_name  password_of_mysql
```
example below:
```
./import_tables.sh /home/ubuntu/testauth/  testauth  passwd123

./import_tables.sh    testauth/  testauth  passwd123
```
### Enter path of directory where all the tables are stored (just give directory name only if your PWD contains 'testauth') After than give database name.  
### NOTE: (if getting any error create database in mysql manually first) after than run the script according to instruction
