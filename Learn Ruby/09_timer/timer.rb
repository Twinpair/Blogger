class Timer
    attr_accessor :seconds, :minutes, :hour
    
    def initialize(seconds = 0)
        @seconds = seconds
    end
    
    def time_string
        padded(@seconds)
        return "#{@hour}:#{@minutes}:#{@seconds}"
    end
    
    def padded number
        @seconds = number
        @hour = (@seconds * 0.00027778).to_i
        @minutes = (@seconds * 0.01666667).to_i
        @hour = @hour % 60
        @minutes = @minutes % 60
        @seconds = @seconds % 60
        if @hour.to_s.length == 1
            @hour = "0#{@hour}"
        end
        if @minutes.to_s.length == 1
            @minutes = "0#{@minutes}"
        end
        if @seconds.to_s.length == 1
             @seconds = "0#{ @seconds}"
        end
         return @seconds.to_s
    end
end