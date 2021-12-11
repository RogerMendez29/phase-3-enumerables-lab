require 'pry'

def spicy_foods 
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
  ]
end

def get_names(spicy_foods)
  # spicy_foods(spicy_foods)
  spicy_foods.map do |food|
    food[:name]
  end
end



def spiciest_foods(spicy_foods)
  spicy_foods.filter {|food|food[:heat_level]>5}
  
end

def print_spicy_foods(spicy_foods)
  pepper ="🌶"
  updated_menu = spicy_foods.map do |food|
    heat_level = food[:heat_level]
    number = heat_level.to_i
    score = pepper * number
    new_form = "#{food[:name]} (#{food[:cuisine]}) | Heat Level: #{score}"
    new_form
  end
   puts updated_menu
  end





def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  spicy_foods.find do |food|
  food[:cuisine] == cuisine
  end
end

def sort_by_heat(spicy_foods)
  spicy_foods.sort_by do  |food|
    food[:heat_level]

  end
end

def print_spiciest_foods(spicy_foods)
  spiciest_foods = spiciest_foods(spicy_foods)
  print_spicy_foods(spiciest_foods)

end

# given an array of spicy foods, return an integer representing 
# the average heat level of all the spicy foods in the array
def average_heat_level(spicy_foods)
  heat_levels = spicy_foods.map {|food| food[:heat_level]}
  sum = heat_levels.sum
  average = sum / heat_levels.length
  average
end
average_heat_level(spicy_foods)