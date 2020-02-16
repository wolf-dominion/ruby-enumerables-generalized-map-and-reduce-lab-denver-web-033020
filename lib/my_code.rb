
def map(array)
  
  new = []
  count = 0
  
  while count < array.length
    new.push(yield(array[count]))
    count += 1
  end
  new
end

def reduce(array, sv=nil)
  
  total = 0
  count = 0
  
  while count < array.length
    total += (yield(array))
    count += 1
  end
  total
end