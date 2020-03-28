# Input: n
# Output: List all permutation of (1, 2, ..., n)

print "Input n: "
n = gets.chomp.to_i

def generator(n)
  array = (1..n).to_a

  while true
    p array

    j = n - 1  
    k = 0
    a = n - 1

    # Find the longest decresing part starting from the end of the array
    while j >= 0 && array[j] < array[j - 1]
      j -= 1
      k += 1
    end

    # Find the smallest element in that part that is bigger than the left-outer element from that part
    # j - 1 is the index of the left-outer element
    while a >= 0 && array[a] < array[j - 1]
      a -= 1
    end

    array = swap(array, j - 1, a)
    array = reverse(array, j, j + k)

    break if j == 0
  end
end

def swap(array, x, y)
  temp = array[x]
  array[x] = array[y]
  array[y] = temp

  array
end

def reverse(array, s, e)
  while s < e
    array = swap(array, s, e)

    s += 1
    e -= 1
  end

  array
end

generator(n)
