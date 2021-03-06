require './lib/recipe'
require './lib/pantry'

class CookBook

  attr_reader :recipes,
              :ingredients

  def initialize
    @recipes = []
    @ingredients = []
  end

  def add_recipe(recipe)
    @recipes << recipe

    recipe.ingredients.each do |ing|
      unless @ingredients.include?(ing.name)
        @ingredients << ing.name
      end
    end
  end

  def highest_calorie_meal
    coll = @recipes.max_by do |recipe|
      recipe.total_calories
    end
    coll
  end

end
