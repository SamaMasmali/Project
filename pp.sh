#!/bin/bash
display_menu(){
echo "Plants App Menu "
echo "1. Display all plants"
echo "2. Add a plants"
echo "3. Remove a plants"
echo "4. Search for a plants"
echo "5. Exit"
echo -n "Enter your choice"
}
display_plants(){
echo "List of planets: "
cat planet.txt
}
add_plants(){
echo "Enter the name of the new planete: "
read new_plant
echo "$new_plant" >> planet.txt
echo "Plant added successfully."
}
search_plant(){
echo "Enter the name of the plant to search: "
read search_name
if grep -q "^$search_name" planet.txt; then
echo "Information about $search_name"
grep "^$search_name" planet.txt | awk '{print $0}'
else
echo "Sorry, $search_name not found"
fi
}
remove_plant(){
echo "Enter the name of the plant to remove"
read remove_plant
if grep -q "$remove_plant" planet.txt; then
sed -i "/$remove_plant/d" planent.txt
echo "Plant '$remove_plant' removed successfuly."
else
echo "Plant '$remove_plant' not found."
fi
}
echo " Welcome to Garden Glow App"
while true; do 
display_menu
echo " Enter your choice: "
read choice 
case $choice in 
1) display_plants
;;
2) add_plants
;;
3) remove_plant
;;
4) search_plant
;;
5) echo " Thank you for using the app"
exit 0
;;
*) echo " Invalid Choice "
;;
esac
done
