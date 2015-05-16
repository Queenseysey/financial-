json.array!(@profolios) do |profolio|
  json.extract! profolio, :id, :name, :password, :stocks
  json.url profolio_url(profolio, format: :json)
end
