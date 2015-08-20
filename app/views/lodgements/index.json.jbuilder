json.array!(@lodgements) do |lodgement|
  json.extract! lodgement, :id, :name, :amount, :description
  json.url lodgement_url(lodgement, format: :json)
end
