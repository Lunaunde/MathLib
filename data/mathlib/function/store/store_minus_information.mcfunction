$execute if score #after_exponent number matches 0 run scoreboard players set #$(operand)_sgn number -1
$execute if score #after_exponent number matches 1 run scoreboard players set #$(operand)_sgn_exponent number -1
function mathlib:store/jump with storage math store_information