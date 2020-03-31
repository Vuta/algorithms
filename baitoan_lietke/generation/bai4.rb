print "Input names: "
names = gets.chomp.split(', ')

print "Input k: "
k = gets.chomp.to_i

def generator(names, k)
  array = names[0..(k - 1)]  

  while true
    p array

    i = k - 1
    while i >= 0 && array[i] == names[names.length - k + i]
      i -= 1
    end

    array[i] = names[i + 1]
    for j in (i + 1)..(k - 1)
      array[j] = names[j - 1]
    end

    break if i < 0
  end
end

generator(names, k)
