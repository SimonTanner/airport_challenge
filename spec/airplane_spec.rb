require './lib/airplane'

describe 'Airplane' do
    it 'checks to see if there is an airplane flying' do
        plane = Airplane.new
        expect(plane).to be_flying
    end
        
end