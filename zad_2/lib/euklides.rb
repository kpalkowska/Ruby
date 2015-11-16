def oblicz_nwd(a,b,p=0)
  if a == b
  end
  count = 0
  while (a != b)
    count += 1
    if a < b
      b = b-a
    else
      a = a - b
    end
  end
  return a
end
