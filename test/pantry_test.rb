require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
require './lib/pantry'



class PantryTest < Minitest::Test

  def test_instance_of_pantry
    pantry = Pantry.new
    assert_instance_of Pantry, pantry
  end

  def test_pantry_attributes
    pantry = Pantry.new
    assert_equal ({}), pantry.stock
  end

  def test_stock_check
    pantry = Pantry.new
    ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
    assert_equal 0, pantry.stock_check(ingredient1)
  end

  def test_restock
    pantry = Pantry.new
    ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
    ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 200})
    assert_equal 5, pantry.restock(ingredient1, 5)
    assert_equal 15, pantry.restock(ingredient1, 10)
    assert_equal 15, pantry.stock_check(ingredient1)
  end

end
