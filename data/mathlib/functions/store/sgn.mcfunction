$data modify storage math first_char set string storage math $(operand) 0 1
$execute run scoreboard players set #$(operand)_sgn number -1
$execute if data storage math {$(operand):0} run scoreboard players set #$(operand)_sgn number 0
$execute if data storage math {$(operand):0b} run scoreboard players set #$(operand)_sgn number 0
$execute if data storage math {$(operand):0s} run scoreboard players set #$(operand)_sgn number 0
$execute if data storage math {$(operand):0l} run scoreboard players set #$(operand)_sgn number 0
$execute if data storage math {$(operand):0.0d} run scoreboard players set #$(operand)_sgn number 0
$execute if data storage math {$(operand):0.0f} run scoreboard players set #$(operand)_sgn number 0
$execute unless data storage math {first_char:"-"} unless data storage math {$(operand):0} unless data storage math {$(operand):0b} unless data storage math {$(operand):0s} unless data storage math {$(operand):0l} unless data storage math {$(operand):0.0d} unless data storage math {$(operand):0.0f} run scoreboard players set #$(operand)_sgn number 1