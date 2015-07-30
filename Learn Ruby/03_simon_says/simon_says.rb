def echo word
    return word
end

def shout word
    return word.upcase
end

def repeat word, num = 2
    sentence = ""
    while num > 0
        if num != 1
            sentence = sentence << word << " "
        elsif 
            sentence = sentence << word
        end
        num = num - 1
    end
    return sentence
end

def start_of_word word, num
    sentence = ""
    i = 0
    while i < num
        sentence = sentence << word[i] 
        i = i + 1
    end
    return sentence
end

def first_word sentence
    array = sentence.split(" ")
    return array[0]
end

def titleize sentence
    array = sentence.split(" ")
    new_array = []
    i = 0
    array.each do |m|
        if (m != "and" && m != "or" && m != "the" && m != "over") || i == 0
            k = 0
            while k < m.length
                if k == 0
                    new_array[i] = m[k].upcase
                else 
                    new_array[i] = new_array[i] << m[k]
                end
                k = k + 1
            end
        else
            new_array[i] = m
        end
        i = i + 1
    end
    i = 0
    sentence = ""
    while i < array.length
        if i != array.length - 1
            sentence = sentence << new_array[i] << " "
        elsif
            sentence = sentence << new_array[i]
        end
        i = i + 1
    end
    return sentence
end
    