use pokemon;
#What are all types of pokemon a pokemon can have?
SELECT * FROM pokemon_types;
#What is the name of the pokemon with id 45?
SELECT id = 45 FROM pokemon_pokemons;
#How many pokemon are there?
SELECT COUNT name FROM pokemon_pokemons;
#How many types are there?
SELECT SUM name FROM pokemon_type;
#How many pokemon have a secondary type?
select sum secondary_type from pokemon_pokemons;


