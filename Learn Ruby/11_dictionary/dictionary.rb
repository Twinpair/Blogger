class Dictionary
  attr_accessor :entries
  
    def initialize
        @entries = {}
    end
 
    def add value
        value = { value => nil } unless value.is_a? Hash
        value.each do |key, meaning|
          @entries[key] = meaning
        end
    end
  
    def keywords
        @entries.keys.sort
    end

    def include?(key)
        @entries.key?(key)
    end

    def find(query)
        @entries.select { |word, definition| word.scan(query).join == query}
    end

    def entries
        @entries
    end
    
    def printable
        sentence = ""
        @entries.sort.each do |key,meaning|
            sentence = sentence + %Q{[#{key}] "#{meaning}"\n}
        end
        return sentence.chomp
    end
end
