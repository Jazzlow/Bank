json.array!(@withdraws) do |withdraw|
  json.extract! withdraw, :id, :name, :amount, :description
  json.url withdraw_url(withdraw, format: :json)
end
