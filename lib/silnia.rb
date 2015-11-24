def silnia(x)
  return 1 if x == 0
  result = 1
  count = 1
  while count < x
    count = count += 1
    result = result * count
  end
  return result
end
