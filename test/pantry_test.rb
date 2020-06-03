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

end
