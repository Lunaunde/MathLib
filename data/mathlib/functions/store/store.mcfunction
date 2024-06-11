$function sgn {operand:$(operand)}
# $scoreboard players set #$(operand)_store_digit_flag number 0
$scoreboard players set #$(operand)_int_digits number 0
$scoreboard players set #$(operand)_dec_digits number 0
$scoreboard players set #$(operand)_digit1 number 0
$scoreboard players set #$(operand)_digit2 number 1
$execute if score #$(operand)_sgn number matches -1 run scoreboard players add #$(operand)_digit1 number 1
$execute if score #$(operand)_sgn number matches -1 run scoreboard players add #$(operand)_digit2 number 1
$function mathlib:store/store_digit {operand:$(operand)}
execute if score #$(operand)_sgn number matches -1 run function mathlib:store/store_digit {digit}