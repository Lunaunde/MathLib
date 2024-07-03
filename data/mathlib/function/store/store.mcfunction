#part one
$execute store result score #$(operand)_sgn number run function mathlib:store/if_zone {operand:$(operand)}

#part two:data reload
scoreboard players set #after_exponent number 0
$data modify storage math store_information.operand set value "$(operand)"
function mathlib:store/place_digit_reload with storage math store_information

#part three:digit separation
function mathlib:store/digit_separation with storage math store_information
#store_information include operand,place,place_2,digit,digit_exponent

#part four:digit-1
scoreboard players remove #digit number 1
scoreboard players remove #digit_exponent number 1

#part five:real digit data
function mathlib:store/place_digit_reload with storage math store_information
$execute unless score #$(operand)_have_exponent number matches 1 run function mathlib:store/digit_change_without_exponent
$execute if score #$(operand)_have_exponent number matches 1 run function mathlib:store/digit_change_with_exponent