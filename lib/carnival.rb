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

    def most_popular_ride
        rides_ride_log = []
        
        @rides.each do |ride|
            rides_ride_log << ride.rider_log.values.sum
        end
        popular_ride_number = rides_ride_log.max
        popular_ride = @rides.select {|ride| ride.rider_log.values.sum == popular_ride_number}
        most_popular_ride = popular_ride[0]
        most_popular_ride
        
    end

    def most_profitable_ride
        rides_revenue = []
        
        @rides.each do |ride|
           rides_revenue << ride.total_revenue
        end
        max_revenue = rides_revenue.max
        revenue_ride = @rides.select {|ride| ride.total_revenue == max_revenue}
        max_revenue_ride = revenue_ride[0]
        max_revenue_ride
        
    end
end