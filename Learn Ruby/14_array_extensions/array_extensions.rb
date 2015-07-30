class Array
    def sum
        add = 0
        self == [] ? add = 0 : add = self.push(self.pop(self.length).reduce(:+))
        return add[-1]
    end
    
    def square
        array = []
        i = 0
        while i < self.length
            value = self[i]
            array.push(value ** 2 )
            i = i + 1
        end
        return array
    end
    
    def square!
        self.map! {|num| num ** 2}
    end
end