$execute store success storage math success int 1 data modify storage math char set string storage math $(operand) $(place) $(place_2)
execute if data storage math {success:0} run return 0
execute store result storage math char_type int 1 run function mathlib:store/what_char_it_is with storage math
#"what char it is" return 1 if it is a number ,return 2 if it is a "." ,return 3 if it is a "E" ,return 4 if it is a suffixes
execute if data storage math {char_type:1} run function mathlib:store/store_number with storage math