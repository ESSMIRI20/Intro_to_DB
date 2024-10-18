import mysql.connector

mydb = (
    host = "localhost"
    user= "root"
    password = "1234"
    database = "alx_book_store"
)

mycursor = mydb.cursor()

sql = "INSERT INTO customer(customer_id, customer_name, email, address) VALUES(%d, %s, %s, %s)"
data = [
    (2, "Blessing Malik", "bmalik@sandtech.com", "124 Happiness Ave."),
    (3, "Obed Ehoneah", "eobed@sandtech.com", "125 Happiness Ave."),
    (4, "Nehemial Kamolu", "nkamolu@sandtech.com", "126 Happiness Ave.")
    ]

mycursor.executemany(sql, data)

mydb.commit()

mycursor.Close()
mydb.close()