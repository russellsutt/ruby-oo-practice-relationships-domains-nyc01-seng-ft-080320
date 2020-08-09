require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#Guests

russell = Guest.new("Russell")
nancy = Guest.new("Nancy")
audrey = Guest.new("Audrey")
no_travel = Guest.new("No Travel")

#Listings

houseboat = Listing.new("Houseboat", "Seattle")
loft = Listing.new("Loft", "NYC")
apartment = Listing.new("Apt", "London")


#Trips


russell_loft = Trip.new(loft, russell)
nancy_hb = Trip.new(houseboat, nancy)
russell_houseboat = Trip.new(houseboat, russell)
audrey_apt = Trip.new(apartment, audrey)




binding.pry