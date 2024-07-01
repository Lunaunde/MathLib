$execute if score #after_e number matches 0 run scoreboard players set #$(operand)_number_$(digit) number $(char)
$execute if score #after_e number matches 1 run scoreboard players set #$(operand)_number_e_$(digit) number $(char)
$execute if score #after_e number matches 0 run scoreboard players add #$(operand)_digit number 1
$execute if score #after_e number matches 1 run scoreboard players add #$(operand)_digit_e number 1
$scoreboard players add #$(operand)_place number 1
$scoreboard players add #$(operand)_place_2 number 1