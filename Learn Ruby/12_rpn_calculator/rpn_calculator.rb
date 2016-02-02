class RPNCalculator
    attr_accessor :value
    
    def initialize
        @array = []
    end
    
    def push num 
        @array.push(num)
    end
    
    def plus
        if @array.length > 1
            @array.push(@array.pop(2).reduce(:+) )
        else
            begin
                raise Exception.new("calculator is empty")
            end
        end
    end
    
    def minus
        if @array.length > 1
            @array.push(@array.pop(2).reduce(:-) )
        else
            begin
                raise Exception.new("calculator is empty")
            end
        end
    end
    
    def divide
        if @array.length > 1
            @array.push(@array.pop(2).inject{|x,y| x.to_f / y})
        else
            begin
                raise Exception.new("calculator is empty")
            end
        end
    end
    
    def times
        if @array.length > 1
            @array.push(@array.pop(2).reduce(:*) )
        else
            begin
                raise Exception.new("calculator is empty")
            end
        end
    end
    
    def value
        @value = @array[-1]
    end
    
    #extra credit 
    def tokens(expression)
        expression.split(' ').map{|n| n.to_i.to_s == n ? n.to_i : n.to_sym}
    end

    def evaluate(expression)
        @array = []
        operations = {:+ => Proc.new {plus}, :- => Proc.new{minus}, :/ => Proc.new{divide}, :* => Proc.new{times} }
        tokens(expression).chunk{|n| n.is_a?(Integer)}.each{|e,a| e == true ? a.each{|a| push(a) } : a.each {|o| (operations[o].call) }}
        @array[0]
  end
end
