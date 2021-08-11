create table pokemon_master
as
select distinct pokemon_pokemons.name, 
pokemon_trainers.name, 
pokemon_pokemons_trainer.pokelevel, pokemon_pokemons.primary_type, pokemon_pokemons.secondary_type
from pokemon_trainers
inner join pokemon_pokemons_trainer on pokemon_trainer.trainerID = pokemon_pokemon_trainer.trainerID
group by pokemon_trainer.name
order by pokemon_pokemon_trainer.pokelevel DESC;
#I think that the strongest triner has the pokemon with high power levels so I tried to put a table togeether that makes the ranges of the pokelevel the thing that is incrimented.

