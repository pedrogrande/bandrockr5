json.array!(@albums) do |album|
  json.extract! album, :title, :release_date, :info, :buy_link
  json.url album_url(album, format: :json)
end
