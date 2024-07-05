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
$scoreboard players operation #$(operand)_number_part_length number = #digit number
$scoreboard players operation #$(operand)_exponent_part_length number = #digit_exponent number

#part five:exponent
$function mathlib:store/exponent {operand:$(operand)}