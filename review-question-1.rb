## QUESTION 1
require 'pry'
pokemons = [
  {
    "id": 1,
    "name": "bulbasaur",
    "base_experience": 64,
    "height": 7,
    "is_default": true,
    "order": 1,
    "weight": 69,
    "abilities": [
        {
            "is_hidden": true,
            "slot": 3,
            "ability": {
                "name": "chlorophyll",
                "url": "http://pokeapi.co/api/v2/ability/34/"
            }
        }
    ]
},
{
  "id": 3,
  "name": "venesaur",
  "base_experience": 50,
  "height": 10,
  "is_default": true,
  "order": 1,
  "weight": 90,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "fire",
              "url": "http://pokeapi.co/api/v2/ability/38/"
          }
      }
  ]
},
{
  "id": 2,
  "name": "pikachu",
  "base_experience": 60,
  "height": 4,
  "is_default": true,
  "order": 1,
  "weight": 37,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "lightning",
              "url": "http://pokeapi.co/api/v2/ability/30/"
          }
      }
  ]
}
]


# How would you get the url for Bulbasaur's ability?
def bulbassaur_ability(pokemons)
  bulbassaur = pokemons.find do |pokemon|
    pokemon[:name] == "bulbasaur"
  end

  bulbassaur[:abilities].first[:ability][:url]
end

puts bulbassaur_ability(pokemons)


# How would you return the first pokemon with base experience over 40?

def experience_over_40(pokemons)
  pokemons.find do |pokemon|
    pokemon[:base_experience] > 40
  end
end

# How would you return ALL OF THE pokemon with base experience over 40? (Gotta catch em all)
def all_with_experience_over_40(pokemons)
  pokemons.select do |pokemon|
    pokemon[:base_experience] > 40
  end
end

# How would you return an array of all of the pokemon's names?
def all_pokemons_names(pokemons)
  pokemons.collect do |pokemon|
    pokemon[:name]
  end
end

# How would you determine whether or not the pokemon array contained any pokemon with a weight greater than 60?

def any_pokemon_over_60?(pokemons)
  pokemons.any? do |pokemon|
    pokemon[:weight] > 60
  end
end
  binding.pry
#  whatever method you use should return true if there are any such pokemon, false if not.
