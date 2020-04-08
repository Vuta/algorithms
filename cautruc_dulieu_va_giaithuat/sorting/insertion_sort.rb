print "Input: "
array = gets.chomp.split.map(&:to_i)

def insertion_sort(array)
  for i in 1..(array.length - 1)
    temp = array[i]
    j = i - 1
    while j >= 0 && temp < array[j]
      array[j + 1] = array[j]
      j -= 1
    end
    array[j + 1] = temp
  end

  array
end

p insertion_sort(array)
