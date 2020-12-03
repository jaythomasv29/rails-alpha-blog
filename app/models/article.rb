class Article < ApplicationRecord # inherits from applicationrecord model
  validates :title, presence: true
end