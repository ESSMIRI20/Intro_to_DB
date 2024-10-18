import mysql.connector

# Establish a connection to the MySQL server
mydb = mysql.connector.connect(
    host="localhost",
    user="root",    # Replace with your MySQL username
    password="1234" # Replace with your MySQL password
)

# Create a cursor object to execute SQL commands
mycursor = mydb.cursor()

# SQL query to check if the database exists
mycursor.execute("SHOW DATABASES")

# Fetch all databases and check if 'alx_book_store' exists
databases = mycursor.fetchall()
if ('alx_book_store',) not in databases:
    # If the database doesn't exist, create it
    mycursor.execute("CREATE DATABASE alx_book_store")
    print("Database 'alx_book_store' created successfully!")
else:
    print("Database 'alx_book_store' already exists.")

# Close the cursor first
mycursor.close()

# Then close the database connection
mydb.close()
