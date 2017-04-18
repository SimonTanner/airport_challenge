require './lib/weather'

describe Weather do
    
    it { is_expected.to respond_to(:forecast) }
    
    it { is_expected.to respond_to(:random_num) }
    
    it '#random_num should return a random_number between 1 - 10' do
        expect(subject.random_num).to be < 11
        expect(subject.random_num).to be > 0
    end
    
end