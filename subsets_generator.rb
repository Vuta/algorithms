# Input: - n: the length of the set (1, 2, 3, ..., n)
#        - k: the length of the subset (1, 2, ..., k)

# Output: List all subsets with k elements of the set with n elements

print "Input n: "
n = gets.chomp.to_i
print "Input k: "
k = gets.chomp.to_i

def generator(n, k)
  array = (1..k).to_a

  while true
    j = k - 1

    p array

    while j >= 0 && array[j] == n - k + j + 1
      j -= 1
    end

    array[j] += 1
    for i in (j + 1)..(k - 1)
      array[i] = array[i - 1] + 1
    end

    break if j < 0
  end
end

generator(n, k)
