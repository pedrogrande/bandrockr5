json.array!(@members) do |member|
  json.extract! member, :name, :info, :image
  json.url member_url(member, format: :json)
end
