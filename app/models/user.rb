class User < ApplicationRecord
  validates :username, presence: true
  validates :phone_number, presence: true
end
