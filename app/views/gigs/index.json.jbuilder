json.array!(@gigs) do |gig|
  json.extract! gig, :title, :date, :start_time, :finish_time, :location, :street_address, :suburb, :tickets_url
  json.url gig_url(gig, format: :json)
end
