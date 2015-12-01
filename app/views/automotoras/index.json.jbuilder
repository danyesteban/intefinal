json.array!(@automotoras) do |automotora|
  json.extract! automotora, :id, :codigo, :marca, :precio, :modelo, :color, :usuario_id
  json.url automotora_url(automotora, format: :json)
end
