#! /bin/bash
# cars.sh
# Josh Edmondson
x="0"
while [ $x != 3 ]
do
	echo "Type 1 to enter a new car."
	echo "Type 2 to display the current list of cars."
	echo "Type 3 to quit and exit the program."
	read -r X
	x=$(( X ))
	case $x in
		1)
			echo "Type the year: "
				read -r year
			echo "Type the make: "
				read -r make
			echo "Type the model: "
				read -r model
			Y_m_m="$year:$make:$model"
			echo "$Y_m_m" >> My_old_cars;;
		2)
			sort My_old_cars;;
		3) 
			echo "Goodbye";;
	esac
done
