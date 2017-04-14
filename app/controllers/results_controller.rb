require 'geocodio'

post '/results' do
  geocodio = Geocodio::Client.new(ENV["GEOCODIO_API_KEY"])
  input_address = address_to_string(params[:address])
  address = geocodio.geocode([input_address], fields: %w[cd stateleg school timezone]).best
  p "=================================="
  p address
  p "=================================="
  p address.congressional_district
  p "=================================="
end
