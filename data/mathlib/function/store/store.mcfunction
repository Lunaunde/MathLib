#part one sgn
$function mathlib:store/sgn {operand:$(operand)}
#part two
$execute if score #$(operand)_sgn number matches -1 run scoreboard players set #$(operand)_place number 1
$execute unless score #$(operand)_sgn number matches -1 run scoreboard players set #$(operand)_place number 0
$scoreboard players operation #$(operand)_place_2 number = #$(operand)_place number
$scoreboard players add #$(operand)_place_2 number 1
$scoreboard players set $(operand)_digit number 1
$data modify storage math store_information.operand set value "$(operand)"
$execute store result storage math store_information.place int 1 run scoreboard players get #$(operand)_place number
$execute store result storage math store_information.place_2 int 1 run scoreboard players get #$(operand)_place_2 number
$execute store result storage math store_information.digit int 1 run scoreboard players get $(operand)_digit number
#part two_2
function mathlib:store/pick with storage math store_information
#store_information include operand,place,place_2,digit
say hi