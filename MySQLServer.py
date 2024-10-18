import mysql.connector

mydb = mysql.connector.connect(
    host = "localhost",
    user = "root",
    password = "1234"
)

mycursor = mydb.cursor()

mycursor.execute("CREATE DATABASE alx_book_store")

mycursor.close()
mydb.close()

print("Database 'alx_book_store' created successfully!")