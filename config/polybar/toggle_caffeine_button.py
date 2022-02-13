#! /usr/bin/python3

with open("caffeine-button.txt", "r", encoding="utf-8") as file:
    icon = file.readlines()[0]

with open("caffeine-button.txt", "w") as file:
    if icon == "\ufbc8\n":
        file.truncate(0)
        file.write("\uf675\n")
    elif icon == "\uf675\n":
        file.truncate(0)
        file.write("\ufbc8\n")
    else:
        print("error")
        file.truncate(0)
        file.write("ERROR")

    file.close()

