o = 1
n = 2
sum = 2
while (o + n < 4000000)
  if ((o + n) % 2 == 0)
    sum += o + n
  end
  temp = o
  o = n
  n = temp + n
end