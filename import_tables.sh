#!/bin/bash

# Function to import tables from SQL files in a directory
import_tables() {
    directory_path="$1"
    database_name="$2"
    mysql_password="$3"

    # Check if the directory exists
    if [ ! -d "$directory_path" ]; then
        echo "Directory '$directory_path' not found."
        exit 1
    fi

    # Change to the directory
    cd "$directory_path" || exit

    # Set MYSQL_PWD to avoid the password warning
    export MYSQL_PWD="$mysql_password"

    # Loop through each SQL file in the directory
    for sql_file in *.sql; do
        # Extract table name from file name
        table_name=$(basename "$sql_file" .sql)
        
        # Import table into MySQL
        mysql --user=root "$database_name" < "$sql_file"
        
        # Check if the import was successful
        if [ $? -eq 0 ]; then
            echo "Table '$table_name' imported successfully."
        else
            echo "Error importing table '$table_name'."
        fi
    done

    # Unset MYSQL_PWD after importing tables
    unset MYSQL_PWD
}

# Main script starts here

# Check if correct number of arguments provided
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <directory_path> <database_name> <mysql_password>"
    exit 1
fi

# Assign arguments to variables
directory_path="$1"
database_name="$2"
mysql_password="$3"

# Call the import_tables function with provided arguments
import_tables "$directory_path" "$database_name" "$mysql_password"
