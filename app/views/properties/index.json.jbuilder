json.array!(@properties) do |property|
  json.extract! property, :id, :description, :image, :location, :latitude, :longitude, :amenties, :facilities, :date, :price, :services
  json.url property_url(property, format: :json)
end
