require './lib/airplane'

class Airport
    
    attr_reader :planes
    
    def initialize
        @planes = []
    end
    
    def takeoff(weather_forecast = :sunny)
        fail 'Weather conditions are too stormy to take off!' if weather_forecast == :stormy
        @planes.pop
    end
    
    def landed(plane)
        
        @planes << plane
    end
    
end