import tkinter as tk

class VentanaPrincipal:
    def __init__(self, root):
        self.root = root
        self.root.geometry("600x400")
        self.root.title("Ventana Principal")
        self.label = tk.Label(root, text="¡Bienvenido a la ventana principal!")
        self.label.pack()

if __name__ == "__main__":
    root = tk.Tk()
    app = VentanaPrincipal(root)
    root.mainloop()
