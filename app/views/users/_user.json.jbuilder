json.extract! user, :id, :username, :password_digest, :phone_number, :verified, :created_at, :updated_at
json.url user_url(user, format: :json)
