json.array!(@users) do |user|
  json.extract! user, :id, :email, :zip_code
  json.url user_url(user, format: :json)
end
