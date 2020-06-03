require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
require './lib/pantry'



class IngredientTest < Minitest::Test

  def test_instance_of_Ingredient
    ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
    assert_instance_of Ingredient, ingredient1
  end

  def test_ingredient_attributes
    ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
    assert_equal "Cheese", ingredient1.name
    assert_equal "oz", ingredient1.unit
    assert_equal 50, ingredient1.calories
  end

end
