<<<<<<< HEAD
def euklides(a, b, p=0)
=======
def euklides(a , b, p=0)
>>>>>>> origin/master
  if a == b
  end
  count = 0
  while (a != b)
    count = count + 1
    if a < b
      b = b - a
    else
      a = a - b
    end
  end
  return a
end
