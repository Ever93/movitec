import tkinter as tk
from tkinter import ttk
from tkinter import messagebox
from PIL import Image, ImageTk  # Importa PIL
import psycopg2
from db import conectar
import hashlib
from ventana_principal import VentanaPrincipal  # Importa la clase VentanaPrincipal desde el archivo ventana_principal.py
from tkinter import Toplevel



class LoginApp:
  def __init__(self, root):
    self.root = root
    self.root.geometry("431x534+446+113")
    self.root.minsize(120, 1)
    self.root.maxsize(1370, 749)
    self.root.resizable(0, 0)
    self.root.title("Acceso")

    # Carga la imagen de fondo
    self.bg_image = Image.open("images/fonts/bg-login-img.jpg")
    self.bg_photo = ImageTk.PhotoImage(self.bg_image)
      # Crea un Canvas para mostrar la imagen de fondo en toda la ventana
    self.canvas = tk.Canvas(self.root, width=self.bg_image.width, height=self.bg_image.height)
    self.canvas.pack()
        # Mostrar la imagen de fondo en el Canvas
    self.canvas.create_image(0, 0, anchor=tk.NW, image=self.bg_photo)
        # Carga la imagen de logotipo
    self.logo_image = Image.open("images/logo/logo.png")
    new_width = 100
    new_height = 80
    self.logo_image = self.logo_image.resize((new_width, new_height), Image.LANCZOS)
    self.logo_photo = ImageTk.PhotoImage(self.logo_image)
        # Superpone la imagen del logotipo en el Canvas
    self.canvas.create_image(160, 20, anchor=tk.NW, image=self.logo_photo)

    self.TFrame1 = ttk.Frame(self.root)
    self.TFrame1.place(x=10, y=110, height=405, width=415)
    self.TFrame1.configure(relief='groove')
    self.TFrame1.configure(borderwidth="2")
      #Separadores################Izquierda
    self.TSeparator1 = ttk.Separator(self.TFrame1)
    self.TSeparator1.place(x=10, y=100, width=200)  # Ancho de 200 píxeles
      ########################Derecha
    self.TSeparator1_1 = ttk.Separator(self.TFrame1)
    self.TSeparator1_1.place(x=250, y=100, width=155)  # Ancho de 200 píxeles
      #Label
    self.Label1 = tk.Label(self.TFrame1)
    self.Label1.place(x=140, y=30, height=41, width=154)
    self.Label1.configure(anchor='w')
    self.Label1.configure(compound='center')
    self.Label1.configure(font="-family {Segoe UI} -size 16 -weight bold")
    self.Label1.configure(text='''Iniciar Sesión''')

    self.Label2 = tk.Label(self.TFrame1)
    self.Label2.place(x=120, y=90, height=21, width=174)
    self.Label2.configure(anchor='w')
    self.Label2.configure(compound='left')
    self.Label2.configure(text='''Session con Correo Electrónico''')

    self.Label3 = tk.Label(self.TFrame1)
    self.Label3.place(x=20, y=120, height=21, width=114)
    self.Label3.configure(anchor='w')
    self.Label3.configure(compound='left')
    self.Label3.configure(text='''Correo Electrónico''')

    self.Label4 = tk.Label(self.TFrame1)
    self.Label4.place(x=20, y=190, height=21, width=84)
    self.Label4.configure(anchor='w')
    self.Label4.configure(compound='left')
    self.Label4.configure(text='''Contraseña''')
      
    self.Label5 = tk.Label(self.TFrame1)
    self.Label5.place(x=250, y=260, height=21, width=134)
    self.Label5.configure(anchor='w')
    self.Label5.configure(compound='left')
    self.Label5.configure(text='''Olvidaste tu contraseña?''')
      #Entrys
    self.EntryCorreo = tk.Entry(self.TFrame1, background="white")
    self.EntryCorreo.place(x=30, y=150, height=30, width=344)
    self.EntryCorreo.focus_set()

    self.EntryPassword = tk.Entry(self.TFrame1, background="white")
    self.EntryPassword.place(x=30, y=220, height=30, width=344)
      
      #Botones
      # Carga la imagen .png que deseas usar en el botón
    self.button_image = Image.open("images/icons/bloqueado.png")
    new_width = 20  # Ancho deseado en píxeles
    new_height = 20  # Alto deseado en píxeles
    self.button_image.thumbnail((new_width, new_height), Image.LANCZOS)
    self.button_photo = ImageTk.PhotoImage(self.button_image)
      # Crea el botón con texto y una imagen en miniatura al lado
    self.ButtonAcceso = tk.Button(self.TFrame1, text="Acceso", image=self.button_photo, compound=tk.LEFT, command=self.button_click, background="#008CFF",  font=("Arial", 14))
    self.ButtonAcceso.place(x=70, y=300, height=34, width=267)
    
    self.root.bind("<Return>", self.button_click)
  def enter_key_handler(self, event):
    self.button_click()
    
  def button_click(self, event=None):
    correo = self.EntryCorreo.get()
    contraseña = self.EntryPassword.get()
    # Restablecer los campos de entrada a blanco
    self.EntryCorreo.delete(0, tk.END)
    self.EntryPassword.delete(0, tk.END)
    
    if self.validar_usuario(correo, contraseña):
      self.abrir_ventana_principal()
    else:
      messagebox.showerror("Error", "Correo o contraseña incorrectos")

  
  def validar_usuario(self, correo, contraseña):
    try:
      conn, c = conectar()
      c.execute("SELECT clave_hash, salt FROM usuarios WHERE correo = %s", (correo,))
      resultado = c.fetchone()
      if resultado:
        clave_hash_db, salt_db = resultado
        salted_password = salt_db + contraseña
        hashed_password = hashlib.sha256(salted_password.encode()).hexdigest()
        if clave_hash_db == hashed_password:
          return True  # Las credenciales son correctas
    except psycopg2.Error as e:
        print("Error al conectar a la base de datos:", e)
        return False  # Las credenciales son incorrectas

    finally:
            # Cierra el cursor y la conexión en el bloque 'finally'
        if c:
          c.close()
        if conn:
          conn.close()


  def abrir_ventana_principal(self):
    self.root.withdraw()
    ventana_principal_app = Toplevel(self.root)
    ventana_principal = VentanaPrincipal(ventana_principal_app)
    def cerrar_ventana_principal():
      ventana_principal_app.destroy()
      self.root.deiconify()
    ventana_principal_app.protocol("WM_DELETE_WINDOW", cerrar_ventana_principal)

if __name__ == "__main__":
  root = tk.Tk()
  app = LoginApp(root)
  root.mainloop()