print "Input n: "
n = gets.chomp.to_i
print "Input k: "
k = gets.chomp.to_i

def generator(n, k)
  attempt([0], n, k, 0)
end

def attempt(array, n, k, i)
  for j in (array[i - 1] + 1)..(n - k + i + 1)
    array[i] = j

    if i == k - 1
      p array
    else
      attempt(array, n, k, i + 1)
    end
  end
end

generator(n, k)
