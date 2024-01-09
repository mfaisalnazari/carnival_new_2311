class Carnival
    attr_reader :duration, :rides
    def initialize(duration)
        @duration = duration
        @rides = []
    end
    
    def add_ride(ride)
        rides << ride
    end

    def total_revenue
        total_revenue = 0
        @rides.each do |ride|
            total_revenue += ride.total_revenue
        end
        total_revenue
    end
end