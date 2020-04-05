class BinaryTree
  attr_accessor :left_node, :right_node
  attr_reader :value

  def initialize(value)
    @value = value
    @left_node = nil
    @right_node = nil
  end

  def self.visit(node)
    return unless node

    puts node.value 
    visit(node.left_node)
    visit(node.right_node)
  end
end

root = BinaryTree.new('A')
root.left_node = BinaryTree.new('B')
root.right_node = BinaryTree.new('C')

node_b = root.left_node
node_b.left_node = BinaryTree.new('D')
node_b.right_node = BinaryTree.new('E')

node_d = node_b.left_node
node_d.left_node = BinaryTree.new('H')
node_d.right_node = BinaryTree.new('I')

node_e = node_b.right_node
node_e.right_node = BinaryTree.new('J')

node_c = root.right_node
node_c.left_node = BinaryTree.new('F')
node_c.right_node = BinaryTree.new('G')

node_f = node_c.left_node
node_f.left_node = BinaryTree.new('K')

node_g = node_c.right_node
node_g.right_node = BinaryTree.new('L')

BinaryTree.visit(root)
