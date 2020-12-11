class Category < ApplicationRecord # create a model for categories
   # name should be present
   # name should be unique
   # "name should not be too long"
   # "name should not be too short"
  validates :name, presence: true, length: { minimum: 3, maximum: 40}, uniqueness: true
  
end