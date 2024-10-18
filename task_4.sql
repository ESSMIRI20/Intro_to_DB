import mysql.connector

mydb = (
    host = "localhost",
    user = "root",
    password = "1234",
    database = "alx_book_store"
)

mycursor = mydb.cursor()
mycursor.execute(mycursor.execute("""
        SELECT COLUMN_NAME, COLUMN_TYPE, IS_NULLABLE, COLUMN_DEFAULT, EXTRA
        FROM INFORMATION_SCHEMA.COLUMNS
        WHERE TABLE_SCHEMA = 'alx_book_store' AND TABLE_NAME = 'Books';
    """))
books_description = mycursor.fetchall()

for i in books_description:
    print(i)

mycursor.close()
mydb.close()