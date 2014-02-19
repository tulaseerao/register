json.array!(@dependents) do |dependent|
  json.extract! dependent, :id, :first_name, :last_name, :date_of_birth
  json.url dependent_url(dependent, format: :json)
end
