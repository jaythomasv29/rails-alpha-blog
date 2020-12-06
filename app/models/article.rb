class Article < ApplicationRecord # inherits from applicationrecord model
  # validates data to make sure field is not empty
  validates :title, presence: true, length: {minimum: 3, maximum: 50}
  validates :description, presence: true , length: {minimum: 5, maximum: 200}
  # validates :price, presence: true

  
end