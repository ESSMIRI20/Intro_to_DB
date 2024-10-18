import mysql.connector
from mysql.connector import Error

try:
    mydb = mysql.connector.connect(
        host = "localhost",
        user = "root",
        password = "1234"
    )
    if mydb.is_connected():
        print("Successfully connected to MySQL server")

    mycursor = mydb.cursor()

    mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")

    mycursor.close()
    mydb.close()

except Error as e:
    print(f"Error: {e}")

print("Database 'alx_book_store' created successfully!")

