import mysql.connector

mydb = (
    host = "localhost"
    user = "root"
    password = "1234"
    database = "alx_book_store"
)

mycursor = mydb.cursor()

sql = "INSERT INTO customer(customer_id, customer_name, email, address) VALUES(%d, %s, %s, %s)"
data = (1, "Cole Baidoo", "cbaidoo@sandtech.com", "123 Happiness Ave.")

mycursor.execute(sql, data)

mycursor.Close()
mydb.close()