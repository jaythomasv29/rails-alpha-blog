require 'test_helper'

class CategoryTest < ActiveSupport::TestCase # Category test file

  def setup
    @category = Category.new(name: "Sports") # runs before each test is run
  end

  test "category should be valid" do # feature / definition of what we are trying to test
    assert @category.valid?
  end

  test "name should be present" do
    @category.name = " "
    assert_not @category.valid?
  end

  test "name should be unique" do
    @category.save
    @category2 = Category.new(name: "Sports")
    assert_not @category2.valid?
  end

  test "name should not be too long" do
    @category.name = "a" * 26
    assert_not @category.valid?
  end

  test "name should not be too short" do
    @category.name = "aa"
    assert_not @category.valid?
  end

end