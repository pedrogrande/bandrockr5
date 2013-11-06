json.array!(@photos) do |photo|
  json.extract! photo, :image, :caption
  json.url photo_url(photo, format: :json)
end
