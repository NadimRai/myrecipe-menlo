require 'test_helper'

class ChefTest < ActiveSupport::TestCase
	def setup
    @chef = Chef.new(chefname: "mashrur", email: "mashrur@example.com")
  end

  test "should be valid" do
    assert @chef.valid?
  end

   test "name should be present" do
    @chef.chefname = " "
    assert_not @chef.valid?
  end

  test "name should be less than 30 characters" do
    @chef.chefname = "a" * 31
    assert_not @chef.valid?
  end
  
end