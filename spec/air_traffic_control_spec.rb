require './lib/air_traffic_control'
require './lib/airplane'

describe Airport do
    # it 'can clear a plane for take off' do
    #     airport = Airport.new
    #     expect(airport.takeoff).to be_flying
    # end
    
    # it 'can allow a plane to land at the airport' do
    #     airport = Airport.new
    #     expect(airport.landed).to be_landed
    # end
    
    it { is_expected.to respond_to(:takeoff) }
    
    it { is_expected.to respond_to(:landed) }
    
    it { is_expected.to respond_to(:landed).with(1).argument }
    
    it 'returns planes that have landed' do
        plane = Airplane.new
        subject.landed(plane)
        expect(subject.planes).to include plane
    end
    
    it 'When an airplane has taken off the plane is no longer at the airport' do
        airport = Airport.new
        airport.landed(Airplane.new)
        airport.takeoff
        expect(airport.planes).to eq []
    end
end
        
        