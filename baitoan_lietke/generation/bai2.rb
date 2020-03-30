print "Input n: "
n = gets.chomp.to_i

print "Input k: "
k = gets.chomp.to_i

def generator(n, k)
  array = Array.new(k) { 0 }

  while true
    p array

    i = k - 1
    while i >= 0 && array[i] == n - 1
      i -= 1
    end

    array[i] += 1
    for j in (i + 1)..(k - 1)
      array[j] = 0
    end

    break if i < 0
  end
end

generator(n, k)
