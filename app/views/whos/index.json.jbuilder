json.array!(@whos) do |who|
  json.extract! who, :id, :are, :you, :age
  json.url who_url(who, format: :json)
end
