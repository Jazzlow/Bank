json.array!(@deposits) do |deposit|
  json.extract! deposit, :id, :name, :amount, :description
  json.url deposit_url(deposit, format: :json)
end
