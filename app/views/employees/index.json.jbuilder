json.array!(@employees) do |employee|
  json.extract! employee, :id, :Surname, :salary
  json.url employee_url(employee, format: :json)
end
