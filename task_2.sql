import mysql.connector
from mysql.connector import Error

try:
    # Establish a connection to the MySQL server and select the database
    mydb = mysql.connector.connect(
        host="localhost",
        user="root",    # Replace with your MySQL username
        password="1234", # Replace with your MySQL password
        database="alx_book_store"  # Use the existing database
    )

    if mydb.is_connected():
        print("Successfully connected to MySQL server")

    # Create a cursor object to execute SQL commands
    mycursor = mydb.cursor()

    # SQL script to create all tables at once
    sql_script = """
    CREATE TABLE IF NOT EXISTS Authors (
        author_id INT AUTO_INCREMENT PRIMARY KEY,
        author_name VARCHAR(215)
    );

    CREATE TABLE IF NOT EXISTS Books (
        book_id INT AUTO_INCREMENT PRIMARY KEY,
        title VARCHAR(130),
        author_id INT,
        price DOUBLE,
        publication_date DATE,
        FOREIGN KEY (author_id) REFERENCES Authors(author_id)  
    );

    CREATE TABLE IF NOT EXISTS Customers (
        customer_id INT AUTO_INCREMENT PRIMARY KEY,
        customer_name VARCHAR(215),
        email VARCHAR(215),
        address TEXT
    );

    CREATE TABLE IF NOT EXISTS Orders (
        order_id INT AUTO_INCREMENT PRIMARY KEY,
        customer_id INT,
        order_date DATE,
        FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
    );

    CREATE TABLE IF NOT EXISTS Order_Details (
        orderdetailid INT AUTO_INCREMENT PRIMARY KEY,
        order_id INT,
        book_id INT,
        quantity DOUBLE,
        FOREIGN KEY (order_id) REFERENCES Orders(order_id),
        FOREIGN KEY (book_id) REFERENCES Books(book_id)
    );
    """

    # Execute the entire SQL script as a single command
    mycursor.execute(sql_script, multi=True)

    print("Tables created successfully!")

except Error as e:
    # Catch any MySQL errors
    print(f"Error: {e}")

mycursor.close()
mydb.close()

    print("MySQL connection is closed.")

