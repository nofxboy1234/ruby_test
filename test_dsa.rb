# rocks = 30.times.map { rand(200) + 1 }
# puts rocks.join(', ')
# max_rock = 0

# rocks.each { |rock| max_rock = rock if max_rock < rock }
# puts "Heavies rock is: #{max_rock}"

# max_rock = rocks.inject { |max_rock, rock| max_rock > rock ? max_rock : rock }
# puts "Heaviest rock is: #{max_rock}"
###################################

# def rock_judger(rocks_arr)
#   if rocks_arr.length <= 2
#     # the base case
#     a = rocks_arr[0]
#     b = rocks_arr[-1]
#   else
#     a = rock_judger(rocks_arr.slice!(0, rocks_arr.length / 2))
#     b = rock_judger(rocks_arr)
#   end

#   return a > b ? a : b
# end

# rocks = 30.times.map { rand(200) + 1 }
# puts rocks.join(', ')
# puts "Heaviest rock is: #{rock_judger(rocks)}"
###################################
# def rock_judger(r_arr)
#   count = r_arr.length
#   a, b =
#     (
#       if count <= 2
#         [r_arr[0], r_arr[-1]]
#       else
#         [rock_judger(r_arr.pop(count / 2)), rock_judger(r_arr)]
#       end
#     )
#   return a > b ? a : b
# end

# rocks = 30.times.map { rand(200) + 1 }
# p rock_judger(rocks)
###################################
# def fact(n)
#   n == 0 ? 1 : n * fact(n - 1)
# end

# p fact(5)
###################################
# require 'pry-byebug'

# def collatz(n, steps = 0)
#   if n > 1
#     steps += 1
#     if n.even?
#       collatz(n / 2, steps)
#     elsif n.odd?
#       collatz(3 * n + 1, steps)
#     end
#   else
#     return steps
#   end
# end

# p collatz(50)
###################################

# def flatten(array, result = [])
#   array.each do |element|
#     element.kind_of?(Array) ? flatten(element, result) : result << element
#   end
#   result
# end
###################################
# def integer_to_roman(roman_mapping, number, result = '')
#   return result if number == 0
#   roman_mapping.keys.each do |divisor|
#     quotient, modulus = number.divmod(divisor)
#     result << roman_mapping[divisor] * quotient
#     return integer_to_roman(roman_mapping, modulus, result) if quotient > 0
#   end
# end

# require 'set'

# products = Set.new

# products << 12
# products << 12
# products << 13

# # p products

# # p products.include?(1)
# # p products[0]
# # p products.to_a

# p products
# p products2 = products | (1..10)
# p products2.sort
# p products2
# p products2 - (3..4)

# p Set.new(1..3) & Set.new(2..5)
# p Set.new(10..40) >= Set.new(20..30)
# p Set.new(25..27) <= Set.new(20..30)

# sorted_numbers = SortedSet.new

# sorted_numbers << 5
# sorted_numbers << 2
# sorted_numbers << 1

# p sorted_numbers
###################################

# def binary_search(target, list)
#   position = (list.count / 2).floor
#   mid = list[position]

#   return mid if mid == target

#   if (mid < target)
#     return binary_search(target, list.slice(position + 1, list.count / 2))
#   else
#     return binary_search(target, list.slice(0, list.count / 2))
#   end
# end

# arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
# target = 9

# require 'benchmark'

# Benchmark.bm do |x|
#   x.report('A --- ') { binary_search(target, arr) }
#   x.report('B --- ') { arr.bsearch { |x| x == target } }
# end
###################################

# binary search trees
# arr = [5, 7, 1, 15, 9, 2, 14, 8, 7, 3]
# p arr
# p arr.sort
###################################

# queue
# a = []

# a.push(1)
# a.push(2)
# a.push(3)

# p a
# puts a.shift
# p a

# a.push(4)
# p a

# puts a.shift
# p a
###################################
class Node
  attr_reader :value
  attr_accessor :left, :right
  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end
end

def push_node(node, value)
  if value > node.value
    if node.right
      push_node(node.right, value)
    else
      node.right = Node.new(value)
    end
  else
    if node.left
      push_node(node.left, value)
    else
      node.left = Node.new(value)
    end
  end
end

def level_order(root)
  return if root == nil

  que = Queue.new
  que << root
  while !que.empty?
    current = que.pop
    p current.value
    que.push(current.left) if !current.left.nil?
    que.push(current.right) if !current.right.nil?
  end
end

def traverse(node)
  return if node == nil

  traverse(node.left) if node.left

  puts node.value

  traverse(node.right) if node.right
end

def pre_order(node)
  return if node.nil?

  puts node.value
  pre_order(node.left)
  pre_order(node.right)
end

def in_order(node)
  return if node.nil?

  in_order(node.left)
  puts node.value
  in_order(node.right)
end

def post_order(node)
  return if node.nil?

  post_order(node.left)
  post_order(node.right)
  puts node.value
end

# def in_order(node)
#   return if node.nil?

#   in_order(node.left)
#   puts node.value
#   in_order(node.right)
# end

# arr = [5, 6, 2, 4, 1, 8, 7, 9, 3]
arr = %w[F D J B E G K A C I]
root = Node.new(arr.shift)
arr.each { |e| push_node(root, e) }
# pp root

# Breadth-first traversal
level_order(root)
puts
traverse(root)

# Depth-first traversal
puts
pre_order(root)
puts
in_order(root)
puts
post_order(root)
