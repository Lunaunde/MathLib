$execute if score #after_exponent matches 0 run scoreboard #$(operand)_sgn number -1
$execute if score #after_exponent matches 1 run scoreboard #$(operand)_sgn_exponent number -1
function mathlib:store/jump with storage math store_information