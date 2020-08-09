class Guest

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end


    def trips
        Trip.all.select do |ele|
            ele.guest == self
        end
    end

    def listings
       trips.map do |ele|
            ele.listing
        end
    end

    def trip_count
        trips.count
    end

    def self.pro_traveller
        self.all.select do |ele|
            ele.trip_count > 1
        end
    end

    def self.find_all_by_name(name)
        self.all.select do |ele|
            ele.name == name
        end
    end
end