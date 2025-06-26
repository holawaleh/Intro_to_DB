import mysql.connector
from mysql.connector import Error

def create_database():
    try:
        # Connect to MySQL server (not to a specific database)
        connection = mysql.connector.connect(
            host="localhost",
            user="root",              # Replace with your MySQL username
            password="Finese@10"   # Replace with your MySQL password
        )

        if connection.is_connected():
            cursor = connection.cursor()
            cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
            print("✅ Database 'alx_book_store' created successfully!")
    
    except Error as err:
        print(f"❌ Failed to connect or create database: {err}")

    finally:
        # Clean up: close cursor and connection
        if 'cursor' in locals():
            cursor.close()
        if connection.is_connected():
            connection.close()
            print("🔌 MySQL connection closed.")

# Run the function
if __name__ == "__main__":
    create_database()
