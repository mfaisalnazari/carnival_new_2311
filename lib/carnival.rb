class Carnival
    attr_reader :duration, :rides, :total_revenue
    def initialize(duration)
        @duration = duration
        @rides = []
        @total_revenue = 0
    end
end