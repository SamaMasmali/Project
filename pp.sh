display_menu(){
echo "Planets App Menu "
echo "1. Display all planets"
echo "2. Add a planets"
echo "3. Remove a planets"
echo "4. Search for a planets"
echo "5. Exit"
echo -n "Enter your choice"
}
display_planets(){
echo "Lis of planets: "
cat planets.txt
}
add_planets(){
echo "Enter the name of the new planete: "
read new_planet
echo "$new_planet" >> planets.txt
echo "Planet aded successfully."
}
search_planet(){
echo "Enter the name of the planet to search: "
read search_name
if grep -q "^$search_name" planets.txt; then
echo "Information about $search_name"
grep "^$search_name" planets.txt | awk '{print $0}'
else
echo "Sorry, $search_name not found"
fi
}
