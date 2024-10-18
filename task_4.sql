import mysql.connector

mydb = (
    host = "localhost",
    user = "root",
    password = "1234",
    database = "alx_book_store"
)

mycursor = mydb.cursor()
mycursor.execute("SHOW COLUMNS FROM BOOKS")
books_description = mycursor.fetchall()

for i in books_description:
    print(i)

mycursor.close()
mydb.close()