$function mathlib/store {operand:"$(operand)"}
$scoreboard players operation #ans number = #$(operand)_sgn number
$execute store result storage minecraft:math ans int 1 run scoreboard players get #$(operand)_sgn number