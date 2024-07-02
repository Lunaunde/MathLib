$scoreboard players operation #$(operand)_decimal_part_length_number number = #$(operand)_digit number
$scoreboard players operation #$(operand)_decimal_part_length_number number -= #$(operand)_integer_part_length_number number
scoreboard players set #after_e number 1
$scoreboard players set #$(operand)_sgn_e number 1
function mathlib:store/jump with storage math store_information