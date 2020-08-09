class Listing

    attr_accessor :listing, :city

    @@all = []

    def initialize(listing, city)
        @listing = listing
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def trips
        Trip.all.select do |ele|
            ele.listing == self
        end
    end

    def guests
        trips.map do |ele|
            ele.guest
        end
    end


    def trip_count
        trips.count
    end

    def self.find_all_by_city(city)
        self.all.select do |ele|
            ele.city == city
        end
    end

    def self.most_popular
        self.all.max_by do |ele|
            ele.trip_count
        end
    end
end