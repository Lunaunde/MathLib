#part one
$execute store result score #$(operand)_sgn number run function mathlib:store/if_zone {operand:$(operand)}

#part two:data reload
$scoreboard players set #$(operand)_place number 0
$scoreboard players operation #$(operand)_place_2 number = #$(operand)_place number
$scoreboard players add #$(operand)_place_2 number 1
$scoreboard players set #$(operand)_digit number 1
$scoreboard players set #$(operand)_digit_e number 1
scoreboard players set #after_e number 0
$data modify storage math store_information.operand set value "$(operand)"
$execute store result storage math store_information.place int 1 run scoreboard players get #$(operand)_place number
$execute store result storage math store_information.place_2 int 1 run scoreboard players get #$(operand)_place_2 number
$execute store result storage math store_information.digit int 1 run scoreboard players get $(operand)_digit number
$execute store result storage math store_information.digit_e int 1 run scoreboard players get $(operand)_digit_e number

#part three:digit separation
function mathlib:store/digit_separation with storage math store_information
#store_information include operand,place,place_2,digit,digit_e

#part four:digit-1
$scoreboard players remove #$(operand)_digit number 1
$scoreboard players remove #$(operand)_digit_e number 1