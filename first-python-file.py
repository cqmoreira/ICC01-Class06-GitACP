#!/bin/python

option = "0"

def menu():
    print ("Menu")
    print ("1) Read and Display")
    print ("2) Add a New Name")
    print ("3) Exit")


def read_and_display_names():
        with open("names.txt", "r") as file:
            for name in file:
                print("Hello,", name.strip())

def add_a_new_name():
        with open ("names.txt", "a") as file:
            file.write("\n" + input("Add a new name: "))

while option != "3":
    menu()
    option = input("Choose an Option: ")

    if option == "1":
            read_and_display_names()
    elif option == "2":
            add_a_new_name()
    elif option == "3":
            print("Exiting")
            break
    else:
        print("Invalid Option")