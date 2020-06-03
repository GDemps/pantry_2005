require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
require './lib/recipe'

class RecipeTest < Minitest::Test

  def test_instance_of_cookbook
    recipe1 = Recipe.new("Mac and Cheese")
    assert_instance_of Recipe, recipe1
  end

  def test_recipe_holds_ingredients
    recipe1 = Recipe.new("Mac and Cheese")
    assert_equal "Mac and Cheese", recipe1.name
    assert_equal ({}), recipe1.ingredients_required
  end

  def test_add_ingredient
    recipe1 = Recipe.new("Mac and Cheese")
    ingredient1 = Ingredient.new({name: "Cheese", unit: "C", calories: 100})
    ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 30})
    recipe1.add_ingredient(ingredient1, 2)
    recipe1.add_ingredient(ingredient1, 4)
    recipe1.add_ingredient(ingredient2, 8)
    assert_equal 6, recipe1.ingredients_required[ingredient1]
    assert_equal 8, recipe1.ingredients_required[ingredient2]
    assert_equal [], recipe1.ingredients
  end


end
