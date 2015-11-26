json.array!(@boleta) do |boletum|
  json.extract! boletum, :id, :pizza1_id, :ingrediente_id, :usuario_id
  json.url boletum_url(boletum, format: :json)
end
