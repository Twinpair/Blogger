def reverser
  string = yield
  words  = string.split(" ")
  answer = ''
  i = 0
  while i < words.count
    answer = answer + words[i].reverse
    i = i.next
    if i < words.count
      answer = answer+ " "
    end
  end
  return answer
end

def adder value = 1
    number = yield
    return number + value 
end

def repeater n=1, &block
  n.times &block
end