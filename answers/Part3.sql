#What is each pokemon's primary type?
SELECT COUNT primary_type, id
FROM pokemon_pokemons
GROUP BY primary_type;
#What is Rufflet's secondary type?
select secondary_type from pokemon_pokemons where name='Rufflet';
#What are the names of the pokemon that belong to the trainer with trainerID 303?
select name from pokemon_pokemon_trainer where trainerID=303;
#How many pokemon have a secondary type Poison
select count  secondary_type where secondary_type=2;
#What are all the primary types and how many pokemon have that type?
SELECT COUNT(name), primary_type
FROM pokemon_pokemons
GROUP BY primary_type
ORDER BY COUNT(name) DESC;
#How many pokemon at level 100 does each trainer with at least one level 100 pokemone have? (Hint: your query should not display a trainer)
select count  pokelevel, trainerID from pokemon_pokemon_trainer where pokelevel=100 group by trainerID;
#How many pokemon only belong to one trainer and no other?
select trainerID, pokemon_id from pokemon_pokemon_trainer where