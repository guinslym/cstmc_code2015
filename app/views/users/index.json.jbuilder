json.array!(@users) do |user|
  json.extract! user, :id, :name, :country, :age
  json.url user_url(user, format: :json)
end
