import psycopg2

def conectar():
    # Parámetros de conexión
    db_params = {
        'dbname': 'movitec',
        'user': 'postgres',
        'password': 'admin',
        'host': '127.0.0.1',
        'port': 5432
    }

    # Conectar a la base de datos
    conn = psycopg2.connect(
        dbname=db_params['dbname'],
        user=db_params['user'],
        password=db_params['password'],
        host=db_params['host'],
        port=db_params['port']
    )

    # Crear un objeto cursor para ejecutar consultas
    cursor = conn.cursor()

    return conn, cursor
