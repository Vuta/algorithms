print "Input: "
array = gets.chomp.split.map(&:to_i)

def selection_sort(array)
  for i in 0..(array.length - 1)
    for j in (i + 1)..(array.length - 1)
      if array[i] >= array[j]
        temp = array[i]
        array[i] = array[j]
        array[j] = temp
      end
    end
  end

  array
end

p selection_sort(array)
