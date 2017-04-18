require './lib/air_traffic_control'
require './lib/airplane'
require './lib/weather'

describe Airport do

    it { is_expected.to respond_to(:takeoff).with(1).arguments }
    
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
    
    it 'When weather is stormy won\'t allow a plane to land' do
        plane = Airplane.new
        subject.landed(plane)
        expect{ subject.takeoff(:stormy) }.to raise_error 'Weather conditions are too stormy to take off!'
    end
    
    
end
        
        