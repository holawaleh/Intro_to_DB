import mysql.connector

def create_database():
    try:
        connection = mysql.connector.connect(
            host="localhost",
            user="root",
            password="yourpassword"
        )

        if connection.is_connected():
            cursor = connection.cursor()
            cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
            print("✅ Database 'alx_book_store' created successfully!")

    except mysql.connector.Error as err:  # <- FIXED: Full exception class name
        print(f"❌ Failed to connect or create database: {err}")

    finally:
        if 'cursor' in locals():
            cursor.close()
        if connection.is_connected():
            connection.close()
            print("🔌 MySQL connection closed.")

if __name__ == "__main__":
    create_database()

