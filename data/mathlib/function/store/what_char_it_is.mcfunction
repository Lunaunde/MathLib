$execute store success storage math success int 1 run scoreboard players set #number number $(char)
execute if data storage math {success:1} run return 1
execute if data storage math {char:"."} run return 2
execute if data storage math {char:"E"} run return 3
execute if data storage math {char:"b"} run return 4
execute if data storage math {char:"d"} run return 4
execute if data storage math {char:"f"} run return 4
execute if data storage math {char:"L"} run return 4
execute if data storage math {char:"s"} run return 4