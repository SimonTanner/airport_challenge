require './lib/airplane'

class Airport
    
    attr_reader :planes
    
    def initialize
        @planes = []
    end
    
    def takeoff
        Airplane.new
    end
    
    def landed(plane)
        @planes << plane
    end
    
end