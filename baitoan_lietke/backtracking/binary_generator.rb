print "Input n: "
n = gets.chomp.to_i

def generator(n)
  attempt([], n, 0)
end

def attempt(array, n, i)
  for j in (0..1)
    array[i] = j

    if i == n - 1
      p array
    else
      attempt(array, n, i + 1)
    end
  end
end

generator(n)
