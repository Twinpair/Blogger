largest = 1
number = 600851475143
i = 0
lock = false
while (i != 1000000)
  i = 2
  lock = false
  while (i < 1000000 && lock == false)
    if (number % i == 0)
      number = number / i
      if (largest < i)
        largest = i
        lock = true
      end
    end
    i = i.next
  end
end