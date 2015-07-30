# Remember that one degree fahrenheit is 5/9 of one degree celsius,
# and that the freezing point of water is 0 degrees celsius but 32
# degrees fahrenheit.

class Temperature
    def initialize(hash = {}) 
        @hash = hash   
    end
    
    def self.from_celsius(temp)
        Temperature.new({:c => temp})
    end

    def self.from_fahrenheit(temp)
        Temperature.new({:f => temp})
    end
    
    def in_fahrenheit
        if @hash.has_key?(:f)
            return @hash[:f]    
        elsif @hash.has_key?(:c)
            return @hash[:c]*9.to_f/5+32
        end
    end
    
    def in_celsius
        if @hash.has_key?(:c)
            return @hash[:c]    
        elsif @hash.has_key?(:f)
            return (@hash[:f]-32)*5.to_f/9 
        end
    end
end

class Celsius < Temperature

    def initialize(num, hash = {})
        @hash = hash
        @hash[:c] = num
    end

    def in_fahrenheit
        super
    end

    def in_celsius
        super
    end
end

class Fahrenheit < Temperature

    def initialize(num, hash = {})
        @hash = hash
        @hash[:f] = num
    end

    def in_fahrenheit
        super
    end

    def in_celsius
        super
    end
end