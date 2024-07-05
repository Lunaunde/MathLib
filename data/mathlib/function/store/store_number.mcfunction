$execute if score #after_exponent number matches 0 run scoreboard players set #$(operand)_number_$(digit) number $(char)
$execute if score #after_exponent number matches 1 run scoreboard players set #$(operand)_number_exponent_$(digit_exponent) number $(char)
scoreboard players operation #$(operand)_exponent_part_length number = #digit_exponent number 
execute if score #after_exponent number matches 0 run scoreboard players add #digit number 1
execute if score #after_exponent number matches 1 run scoreboard players add #digit_exponent number 1
function mathlib:store/jump with storage math store_information