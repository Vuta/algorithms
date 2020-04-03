print "Input n: "
n = gets.chomp.to_i

def move(n, pile_a, pile_b, pile_c)
  if n == 1
    puts "Move one disk from #{pile_a} to #{pile_c}"
    return
  end

  move(n - 1, pile_a, pile_c, pile_b)
  move(1, pile_a, pile_b, pile_c)
  move(n - 1, pile_b, pile_a, pile_c)
end

move(n, 'A', 'B', 'C')
