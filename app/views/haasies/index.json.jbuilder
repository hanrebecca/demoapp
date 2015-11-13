json.array!(@haasies) do |haasy|
  json.extract! haasy, :id, :name, :surname, :Looks, :Brains, :Diversity, :Overall
  json.url haasy_url(haasy, format: :json)
end
