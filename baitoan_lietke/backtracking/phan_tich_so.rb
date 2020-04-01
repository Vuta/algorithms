require 'pry-rails'
print "Input n: "
n = gets.chomp.to_i

def generator(n)
  attempt([1], [0], n, 1) 
end

def attempt(array, t, n, j)
  for i in array[j - 1]..((n - t[j - 1]) / 2)
    array[j] = i
    t[j] = t[j - 1] + array[j]

    attempt(array, t, n, j + 1)
  end
  array[j] = n - t[j - 1]
  p array[1..j]
end

generator(n)
