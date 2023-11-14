import hashlib
import os
import datetime
from db import conectar

# Genera un salt aleatorio para el nuevo usuario
salt = os.urandom(16).hex()

# La contraseña que el usuario proporciona
password = "gtxz"

# Concatena el salt y la contraseña, y luego calcula el hash
salted_password = salt + password
hashed_password = hashlib.sha256(salted_password.encode()).hexdigest()

# Obtén la fecha y hora actual del sistema
fecha_actual = datetime.datetime.now()

# Extrae la fecha y la hora por separado
fecha = fecha_actual.strftime("%Y-%m-%d")
hora = fecha_actual.strftime("%H:%M:%S")

# Conecta a la base de datos
conn, cursor = conectar()

# Inserta el nuevo usuario en la base de datos con el hash y el salt
cursor.execute(
    "INSERT INTO usuarios (nombre, apellido, correo, clave_hash, salt, telefono, direccion, fecha, hora, rol) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s)",
    ("Ever", "Benitez", "informaticoebz@gmail.com", hashed_password, salt, "0971104575", "tte santiago brizuela", fecha, hora, 1)
)

# Realiza otras operaciones de base de datos si es necesario

# Guarda los cambios y cierra la conexión
conn.commit()
conn.close()

