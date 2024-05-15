import sqlite3
import base64

def process_database(db_path):
    # Connect to the SQLite database
    conn = sqlite3.connect(db_path)
    cursor = conn.cursor()

    # Query to fetch email, password, and salt from the user table
    try:
        cursor.execute("SELECT email, password, salt FROM user")
    except sqlite3.Error as e:
        print(f"An error occurred: {e}")
        return False

    # Open a file to write the hashcat-compatible hashes
    with open("output_hashes.txt", "w") as hash_file:
        for email, password, salt in cursor.fetchall():
            try:
                # Decode the hex-encoded password and encode it in base64
                decoded_password = base64.b64encode(bytearray.fromhex(password)).decode('utf-8')
                encoded_salt = base64.b64encode(salt.encode()).decode('utf-8')

                # Write the formatted string to file
                # Format is suitable for hashcat usage, mode 10900 (PBKDF2-HMAC-SHA256)
                hashcat_format = f"sha256:10000:{encoded_salt}:{decoded_password}\n"
                hash_file.write(hashcat_format)
            except Exception as e:
                print(f"Failed processing {email}: {e}")
                continue

    # Close the database connection
    conn.close()
    return True

# Path to the SQLite database
db_path = "grafana.db"
success = process_database(db_path)
if success:
    print("Data processed and saved successfully.")
else:
    print("Data processing failed.")
