class User < ApplicationRecord
  has_secure_password
  
  validates :username, presence: true
  validates :phone_number, presence: true
end
