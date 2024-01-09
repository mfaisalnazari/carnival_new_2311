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
        expect(carnival.total_revenue).to eq(0)
    end

    xit 'methods work' do
       
    end

end