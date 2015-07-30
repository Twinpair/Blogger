def translate sentence
    array = sentence.split(" ")
    new_sentence = ""
    array.each do |i|
        temp = ""
        if i[0].downcase == "a" || i[0].downcase == "e" || i[0].downcase == "i" || i[0].downcase == "o" || i[0].downcase == "u"
            new_sentence = new_sentence + i + "ay"
        else
            length = i.length
            m = 0
            while i[m].downcase != "a" && i[m].downcase != "e" && i[m].downcase != "i" && i[m].downcase != "o"
                temp = temp << i[m]
                m = m + 1
            end
            while m < length
                new_sentence = new_sentence + i[m]
                m = m + 1
            end
            new_sentence = new_sentence + temp + "ay"
        end
        if array.length > 1 && i != array[array.length-1]
            new_sentence = new_sentence <<  " "
        end
    end
    return new_sentence
end