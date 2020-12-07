class User < ApplicationRecord
  has_many :articles
 # add validations
 # username must be present and unique, min 3 max 25
 # email address must be present and unique, max 105
 # email must be valid email format, checked with regex
 validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 3, maximum: 25 }
 VALID_EMAIL_REGEX = /(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))\z/
 validates :email, presence: true, 
            uniqueness: { case_sensitive: false },
            format: { with: VALID_EMAIL_REGEX },
            length: { maximum: 100 }

  
end