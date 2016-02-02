def add num1, num2
    return (num1 + num2)
end

def subtract num1, num2
    return num1 - num2
end

def sum array
    sum = 0
    array.each do |i|
        sum = sum + i
    end
    return sum
end

def multiply array
    sum = 1
    array.each do |i|
        sum = sum * i
    end
    return sum
end

def power num1, num2
    return num1 ** num2
end

def factorial num
    sum = 1
    while num > 0
        sum = sum * num
        num = num - 1
    end
    return sum
end