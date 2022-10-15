json.extract! vehicle, :id, :marca, :modelo, :año, :tipo, :precio, :estado, :dealership_id, :created_at, :updated_at
json.url vehicle_url(vehicle, format: :json)
