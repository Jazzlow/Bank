json.array!(@bankaccounts) do |bankaccount|
  json.extract! bankaccount, :id, :image_url, :name, :amount, :sort_code
  json.url bankaccount_url(bankaccount, format: :json)
end
