require 'spec_helper'


RSpec.describe Ride do
    let(:carnival) {Carnival.new(14)}
    let(:ride1) {Ride.new({ name: 'Carousel', min_height: 24, admission_fee: 1, excitement: :gentle })}
    let(:ride2) {Ride.new({ name: 'Ferris Wheel', min_height: 36, admission_fee: 5, excitement: :gentle })}
    let(:ride3) {Ride.new({ name: 'Roller Coaster', min_height: 54, admission_fee: 2, excitement: :thrilling })}
    let(:visitor1) {Visitor.new("Bruce", 54 , "$10")}
    let(:visitor2) {Visitor.new("Tucker", 36 , "$5")}
    let(:visitor3) {Visitor.new("Penny", 64 , "$15")}
    
    it 'exists' do
        expect(carnival).to be_instance_of(Carnival)
    end

    it 'has attributes' do 
        expect(carnival.duration).to eq(14)
        expect(carnival.rides).to eq([])
    end

    it 'methods work' do
       carnival.add_ride(ride1)
       carnival.add_ride(ride2)
       carnival.add_ride(ride3)
       visitor1.add_preference(:gentle)
       visitor2.add_preference(:gentle)
       visitor3.add_preference(:thrilling)
       ride1.board_rider(visitor1)
       ride2.board_rider(visitor2)
       ride3.board_rider(visitor3)
       ride1.board_rider(visitor1)
       expect(carnival.total_revenue).to eq(9)
    end

end