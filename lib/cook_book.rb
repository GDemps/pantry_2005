require './lib/recipe'

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
    coll = []
    @recipes.each do |recipe|
      coll << recipe
    end
    new = coll.max_by do |recipe|
      recipe.total_calories
    end
    new.first
  end

end
