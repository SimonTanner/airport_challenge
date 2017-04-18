

class Weather
    
    # @nums = []
    
    # for x in 1..10 do
    #     @nums << x
    # end
    
    def random_num
        1 + rand(9)
    end
    
    def forecast
        return random_num < 7 ? :sunny : :stormy
    end
    
end
        