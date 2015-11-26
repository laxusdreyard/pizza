json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :nombre, :apellido1, :edad, :telefono, :direccion
  json.url usuario_url(usuario, format: :json)
end
