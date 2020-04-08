print "Input: "
array = gets.chomp.split.map(&:to_i)

def bubble_sort(array)
  for i in 0..(array.length - 1)
    j = array.length - 1
    while j >= i + 1
      if array[j] < array[j - 1]
        temp = array[j]
        array[j] = array[j - 1]
        array[j - 1] = temp
      end
      j -= 1
    end
  end

  array
end

p bubble_sort(array)
