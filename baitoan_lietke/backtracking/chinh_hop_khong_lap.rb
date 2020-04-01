print "Input n: "
n = gets.chomp.to_i

print "Input k: "
k = gets.chomp.to_i

def generator(n, k)
  flag = Array.new(n) { true }
  array = []

  attempt(array, flag, n, k, 0)
end

def attempt(array, flag, n, k, j)
  for i in 1..n
    next unless flag[i - 1]

    array[j] = i
    if j == k - 1
      p array
    else
      flag[i - 1] = false
      attempt(array, flag, n, k, j + 1)
      flag[i - 1] = true
    end
  end
end

generator(n, k)
