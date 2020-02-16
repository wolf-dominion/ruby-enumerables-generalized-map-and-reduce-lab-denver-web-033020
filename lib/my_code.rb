
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
  count = 0
  total = 0
  
  if sv
    total =  sv
  else
    total = array[count]
  end

  while count < array.length
    total = (yield(total, array[count]))
    count += 1
  end
  total
end