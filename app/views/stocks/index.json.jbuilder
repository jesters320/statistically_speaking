json.array!(@stocks) do |stock|
  json.extract! stock, :name, :ticker, :price, :{, :=,, :, :=
  json.url stock_url(stock, format: :json)
end