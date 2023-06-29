class User < ApplicationRecord
  has_secure_password
  
  validates :username, presence: true
  validates :phone_number, presence: true

  def to_json(options={})
    options[:except] ||= [:verified]
    super(options)
  end
end
