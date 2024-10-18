import mysql.connector

myvar = (
    host = "localhost",
    user = "root",
    password = "1234",
    database = "alx_book_store"
)

mycur = myvar.cursor()
mycur.execute("SHOW TABLES")

for i in tables:
    print(i[0])

mycur.close()
myvar.close()