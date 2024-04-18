import mysql.connector
from mysql.connector import Error

def connect_db():
    db_name = "e_commerce_db2"
    user = "root"
    password = "C0dingTemp012!"
    host = "localhost"

    try:
        conn = mysql.connector.connect(
            database=db_name,
            user=user,
            password=password,
            host=host            
        )

        print("Connected to database succesfully!")
        return conn
    except Error as e:
        print(f"Error: {e}")
        return None
connect_db()
