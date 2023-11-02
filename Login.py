import tkinter as tk
from tkinter import ttk
from PIL import Image, ImageTk  # Importa PIL

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

        # Crea el Label para la imagen del logotipo
      self.Labellogo = tk.Label(self.root, image=self.logo_photo)
      self.Labellogo.place(x=160, y=20)



      self.TFrame1 = ttk.Frame(self.root)
      self.TFrame1.place(x=10, y=110, height=405, width=415)
      self.TFrame1.configure(relief='groove')
      self.TFrame1.configure(borderwidth="2")

      self.Label1 = tk.Label(self.TFrame1)
      self.Label1.place(x=140, y=30, height=41, width=154)
      self.Label1.configure(anchor='w')
      self.Label1.configure(background="#d9d9d9")
      self.Label1.configure(compound='center')
      self.Label1.configure(disabledforeground="#a3a3a3")
      self.Label1.configure(font="-family {Segoe UI} -size 16 -weight bold")
      self.Label1.configure(foreground="#000000")
      self.Label1.configure(text='''Iniciar Sesión''')

      self.TSeparator1 = ttk.Separator(self.TFrame1)
      self.TSeparator1.place(x=10, y=100, width=200)  # Ancho de 200 píxeles

      self.TSeparator1_1 = ttk.Separator(self.TFrame1)
      self.TSeparator1_1.place(x=250, y=100, width=155)  # Ancho de 200 píxeles


      self.Label2 = tk.Label(self.TFrame1)
      self.Label2.place(x=120, y=90, height=21, width=174)
      self.Label2.configure(anchor='w')
      self.Label2.configure(background="#d9d9d9")
      self.Label2.configure(compound='left')
      self.Label2.configure(disabledforeground="#a3a3a3")
      self.Label2.configure(foreground="#000000")
      self.Label2.configure(text='''Session con Correo Electrónico''')

      self.Label3 = tk.Label(self.TFrame1)
      self.Label3.place(x=20, y=120, height=21, width=114)
      self.Label3.configure(anchor='w')
      self.Label3.configure(background="#d9d9d9")
      self.Label3.configure(compound='left')
      self.Label3.configure(disabledforeground="#a3a3a3")
      self.Label3.configure(foreground="#000000")
      self.Label3.configure(text='''Correo Electrónico''')

      self.Label4 = tk.Label(self.TFrame1)
      self.Label4.place(x=20, y=190, height=21, width=84)
      self.Label4.configure(anchor='w')
      self.Label4.configure(background="#d9d9d9")
      self.Label4.configure(compound='left')
      self.Label4.configure(disabledforeground="#a3a3a3")
      self.Label4.configure(foreground="#000000")
      self.Label4.configure(text='''Contraseña''')

      self.Entry2 = tk.Entry(self.TFrame1)
      self.Entry2.place(x=30, y=150, height=30, width=344)
      self.Entry2.configure(background="white")
      self.Entry2.configure(disabledforeground="#a3a3a3")
      self.Entry2.configure(font="TkDefaultFont")
      self.Entry2.configure(foreground="#000000")
      self.Entry2.configure(insertbackground="black")

      self.Entry3 = tk.Entry(self.TFrame1)
      self.Entry3.place(x=30, y=220, height=30, width=344)
      self.Entry3.configure(background="white")
      self.Entry3.configure(disabledforeground="#a3a3a3")
      self.Entry3.configure(font="TkDefaultFont")
      self.Entry3.configure(foreground="#000000")
      self.Entry3.configure(insertbackground="black")

      self.Label5 = tk.Label(self.TFrame1)
      self.Label5.place(x=250, y=260, height=21, width=134)
      self.Label5.configure(anchor='w')
      self.Label5.configure(background="#d9d9d9")
      self.Label5.configure(compound='left')
      self.Label5.configure(disabledforeground="#a3a3a3")
      self.Label5.configure(foreground="#000000")
      self.Label5.configure(text='''Olvidaste tu contraseña?''')

      self.Button1 = tk.Button(self.TFrame1)
      self.Button1.place(x=70, y=300, height=34, width=267)
      self.Button1.configure(activebackground="beige")
      self.Button1.configure(activeforeground="black")
      self.Button1.configure(background="#d9d9d9")
      self.Button1.configure(compound='left')
      self.Button1.configure(cursor="fleur")
      self.Button1.configure(disabledforeground="#a3a3a3")
      self.Button1.configure(font="-family {Segoe UI} -size 10")
      self.Button1.configure(foreground="#000000")
      self.Button1.configure(highlightbackground="#d9d9d9")
      self.Button1.configure(highlightcolor="black")
      self.Button1.configure(pady="0")
      self.Button1.configure(text='''Acceso''')

if __name__ == "__main__":
   root = tk.Tk()
   app = LoginApp(root)
   root.mainloop()
