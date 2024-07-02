$say $(operand) $(place) $(place_2) $(digit) $(digit_e)
data remove storage minecraft:math char
data modify storage math success set value 1
$execute store success storage math success int 1 run data modify storage math char set string storage math $(operand) $(place) $(place_2)
execute if data storage math {success:0} run return 0
execute store result storage math char_type int 1 run function mathlib:store/what_char_it_is with storage math
#"what char it is" return 1 if it is a number ,return 2 if it is a "." ,return 3 if it is a "E" ,return 4 if it is a suffixes，return 5 if it is a "-"
data modify storage math store_information.char set from storage math char
execute if data storage math {char_type:1} run function mathlib:store/store_number with storage math store_information
execute if data storage math {char_type:2} run function mathlib:store/store_decimal_point_information with storage math store_information
execute if data storage math {char_type:3} run function mathlib:store/store_e_information with storage math store_information
execute if data storage math {char_type:5} run function mathlib:store/store_minus_information with storage math store_information
execute if data storage math {char_type:4} run function mathlib:store/end with storage math store_information
$execute store result storage math store_information.place int 1 run scoreboard players get #$(operand)_place number
$execute store result storage math store_information.place_2 int 1 run scoreboard players get #$(operand)_place_2 number
$execute store result storage math store_information.digit int 1 run scoreboard players get #$(operand)_digit number
$execute store result storage math store_information.digit_e int 1 run scoreboard players get #$(operand)_digit_e number
function mathlib:store/digit_separation with storage math store_information