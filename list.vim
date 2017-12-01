
let animalKingdom = ['Crocodile', 'Lizard', 'Bug', 'Squid']
echo animalKingdom

call add(animalKingdom, 'Penguin')
echo animalKingdom

call remove(animalKingdom, 3)
echo animalKingdom

call insert(animalKingdom, 'Octopus', 3)
echo animalKingdom
echo animalKingdom[3]

echo sort(copy(animalKingdom))
echo animalKingdom

echo sort(animalKingdom)
echo animalKingdom

let forest = animalKingdom[0:2]
echo forest

let test = animalKingdom[2:-2]
echo test

let test1 = animalKingdom[2:-1]
echo test1

