module AddressHelpers
  def address_to_string(address)
    "#{address[:street]} #{address[:city]} #{address[:state]} #{address[:zipcode]}"
  end
end

helpers AddressHelpers
