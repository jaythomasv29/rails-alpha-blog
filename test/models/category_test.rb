require 'test_helper'

class CategoryTest < ActiveSupport::TestCase # Category test file

  test "category should be valid" do # feature / definition of what we are trying to test
    @category = Category.new(name: "Sports")
    assert @category.valid?
  end

  test "name should be present" do

  end

  test "name should be unique" do

  end

  test "name should not be too short" do

  end
end