print 'Input n: '
n = gets.chomp.to_i
print 'Input k: '
k = gets.chomp.to_i

def run(n, k)
  return 'Invalid input' if k > n
  return 1 if k.zero? || k == n

  run(n - 1, k - 1) + run(n - 1, k)
end

puts run(n, k)
