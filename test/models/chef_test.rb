require 'test_helper'

class ChefTest < ActiveSupport::TestCase
	def setup
    @chef = Chef.new(chefname: "mashrur", email: "mashrur@example.com")
  end

  test "should be valid" do
    assert @chef.valid?
  end
end