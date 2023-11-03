import sqlite3
import hashlib
import os
import datetime

# Genera un salt aleatorio para el nuevo usuario
salt = os.urandom(16).hex()

# La contraseña que el usuario proporciona
password = "gtxz"

# Concatena el salt y la contraseña, y luego calcula el hash
salted_password = salt + password
hashed_password = hashlib.sha256(salted_password.encode()).hexdigest()

# Obtén la fecha actual del sistema
fecha_actual = datetime.datetime.now().strftime("%Y-%m-d")

# Inserta el nuevo usuario en la base de datos con el hash y el salt
conn = sqlite3.connect("movitec.db")
cursor = conn.cursor()
cursor.execute("INSERT INTO usuarios (nombre, apellido, correo, clave_hash, salt, telefono, direccion, fecha, rol) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)", ("Ever", "Benitez", "informaticoebz@gmail.com", hashed_password, salt, "0971104575", "tte santiago brizuela", fecha_actual, 1))
conn.commit()
conn.close()
