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

  def method_name

  end

end
