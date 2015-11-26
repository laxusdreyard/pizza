json.array!(@pizza1s) do |pizza1|
  json.extract! pizza1, :id, :nombre, :tamano, :precio
  json.url pizza1_url(pizza1, format: :json)
end
