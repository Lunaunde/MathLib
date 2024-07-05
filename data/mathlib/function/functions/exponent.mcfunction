$function mathlib/store {operand:"$(operand)"}
$scoreboard players operation #ans number = #$(operand)_exponent number
$execute store result storage minecraft:math ans int 1 run scoreboard players get #$(operand)_exponent number
execute if score #debug_output number matches 1 run tellraw @s {"storage":"math","nbt":"ans"}