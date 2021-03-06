# Input: n - the length of the binary string
# Output: Print all binary string with the length of n

print "Input n: "
n = gets.chomp.to_i

def bin_gen(n)
  if n.zero?
    puts n
    return
  end

  bin_str = Array.new(n) { 0 }

  while true
    puts bin_str.inspect

    j = bin_str.length - 1

    while j >= 0 && bin_str[j] == 1
      j -= 1
    end

    bin_str[j] = 1
    bin_str.fill(0, j + 1, bin_str.length - j - 1)

    break if j < 0
  end
end

bin_gen(n)
