

def calc
n = 100_000_000_0
r = 20
i = 1




while r < n do
  r += 26**i
  i +=1
end
return i
end

p calc