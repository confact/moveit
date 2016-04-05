json.array!(@offers) do |offer|
  json.extract! offer, :id, :name, :email, :from_address, :to_address, :distance, :living_area, :storage_area, :piano, :help, :price
  json.url offer_url(offer, format: :json)
end
