#! /usr/bin/python
import os
import tkinter as tk
def shtdwn():
	os.system("shutdown -h now")
window = tk.Tk()
window.geometry("+400+300")
label = tk.Label(text="Shutdown?")
shutdown_button = tk.Button(
    text="Confirm",
    width=4,
    height=2,
    bg="white",
    fg="black",
	command=shtdwn
)
cancel_button = tk.Button(
    text="Cancel",
    width=4,
    height=2,
    bg="white",
    fg="black",
	command=exit
)
label.grid(row=2, column=2, padx=5, pady=5)
cancel_button.grid(row=2, column=3, padx=5, pady=5)
shutdown_button.grid(row=2, column=4, padx=5, pady=5)
window.mainloop()
