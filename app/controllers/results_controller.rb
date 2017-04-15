require 'geocodio'

get '/results' do
  "Hello World"
end

post '/results' do
  geocodio = Geocodio::Client.new(ENV["GEOCODIO_API_KEY"])
  input_address = address_to_string(params[:address])
  @address = geocodio.geocode([input_address], fields: %w[cd stateleg school timezone]).best
  user_district = @address.congressional_district.district_number
  user_state = @address.state

  @senators = CongressMember.where(state: user_state, district: nil)
  @representatives = CongressMember.where(state: user_state, district: user_district)

  erb :'results'
end
