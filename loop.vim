
let animalKingdom = ['Crocodile', 'Bug', 'Octopus', 'Penguin']

while len( animalKingdom ) > 0
    echo animalKingdom[0] . ' Friend'
    call remove(animalKingdom, 0)
endwhile

let scientists = ['Robert Whate', 'Bill Cook', 'Brad Noggin', 'Squirt']

for scientist in scientists
    echo 'Dr. ' . scientist
endfor
