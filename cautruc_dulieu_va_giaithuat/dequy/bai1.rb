print 'Input a: '
a = gets.chomp.to_i
print 'Input b: '
b = gets.chomp.to_i

def common_divisor(a, b)
  return "Invalid input" if a.zero? && b.zero?
  return a if b.zero? || a == b

  common_divisor(b, a % b)
end

puts common_divisor(a, b)
