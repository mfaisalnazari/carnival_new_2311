require 'spec_helper'

RSpec.describe Visitor do
    let(:visitor1) {Visitor.new("Bruce", 54 , "$10")}
    it 'exists' do
        expect(visitor1).to be_instance_of(Visitor)
    end
    it 'has attributes' do 
        expect(visitor1.name).to eq("Bruce")
        expect(visitor1.height).to eq(54)
        expect(visitor1.spending_money).to eq(10)
        expect(visitor1.preferences).to eq([])
    end
    it 'methods work' do
        visitor2 = Visitor.new("tucker", 36, "$5")
        visitor3 = Visitor.new("Penny", 64, "$15")
        visitor1.add_preference(:gentle)
        visitor1.add_preference(:thrilling)
        expect(visitor1.preferences).to eq([:gentle, :thrilling])
        expect(visitor1.tall_enough?(54)).to be(true)
        expect(visitor2.tall_enough?(54)).to be(false)
        expect(visitor3.tall_enough?(54)).to be(true)
        
    end

end