import tkinter as tk

class Ventana:
    def __init__(self, root):
        self.root = root
        self.root.title("Mi Ventana")
        self.root.geometry("400x300")  # Establece el tamaño de la ventana

if __name__ == "__main__":
    root = tk.Tk()
    app = Ventana(root)
    root.mainloop()