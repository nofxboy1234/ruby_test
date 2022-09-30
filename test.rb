# require 'pry-byebug'

# friends = %w[Sharon Leo Leila Brian Arun]

# invited_list = []
# friends.each { |friend| invited_list.push(friend) if friend != 'Brian' }
# p invited_list

# p friends.select { |friend| friend != 'Brian' }

# responses = {
#   'Sharon' => 'yes',
#   'Leo' => 'no',
#   'Leila' => 'no',
#   'Arun' => 'yes',
# }
# p responses.select { |person, response| response == 'yes' }

# my_numbers = [5, 6, 7, 8]

# sum = 0
# my_numbers.each { |number| sum += number }
# p sum

# p my_numbers.reduce(1000) { |sum, number| sum + number }

# votes = [
#   "Bob's Dirty Burger Shack",
#   "St. Mark's Bistro",
#   "Bob's Dirty Burger Shack",
# ]
# tally =
#   votes.reduce(Hash.new(0)) do |result, vote|
#     # binding.pry
#     result[vote] += 1
#     result
#   end
# p tally

# def invited_friends(friends)
#   friends.select { |friend| friend != 'Brian' }
# end

# p friends
# p invited_friends(friends)

# array = %w[a b c]
# result =
#   array.map do |string|
#     puts string
#     string.upcase
#   end
# p result

# h = { bacon: 'protein', apple: 'fruit' }
# p h.map { |k, v| [k, v.to_sym] }.to_h

# h = { bacon: 'protein', apple: 'fruit' }
# p h.map { |pair| pair }

# friends = %w[Sharon Leo Leila Brian Arun]
# p friends.each { |friend| friend.upcase }
# p friends.map { |friend| friend.upcase }

# array = %w[a b c]
# p array.map.with_index { |ch, idx| [ch, idx] }

# h = { bacon: 'protein', apple: 'fruit' }
# p h
# p h.map { |k, v| [k, v] }.to_h

# h = { bacon: 'protein', apple: 'fruit' }
# p h
# p h.map { |k, v| v }

# a = %w[protein fruit]
# p a
# p a.map { |v| v }

# a = %w[protein fruit]
# p a
# p a.map.with_index(5) { |v, i| [v, i] }

# p a = %w[11 21 5].map(&:to_i)

# a = [1, 2, 3, 4, 5]

# p a.map { |n| n * 2 }

# p a.map do |n|
#   n * 2
# end

# p a.map

# p (a.map do |n| n * 2 end)

# x = a.map { |n| n * 2 }
# p x

# y =
#   a.map do |n|
#     # puts n
#     n * 2
#   end
# p y

#######################
# a = [1, 2, 3, 4, 5]

# p a.map { |n| n * 2 }
# p (a.map { |n| n * 2 })

# p a.map do |n|
#   n * 2
# end
# p (a.map) do |n|
#   n * 2
# end
# p (a.map do |n| n * 2 end)
#######################

# x = [1, 2, 3].reduce(0) { |a, v| a + v }
# p x

# x = [1, 2, 3].sum
# p x

# x = [1, 2, 3].reduce(0) { |a, v| a + 5 * v }
# p x

# x = [1, 2, 3].map { |v| v * 2 }
# p x

# def map(list, &function)
#   list.reduce([]) { |a, v| a.push function.call(v) }
# end
# binding.pry
# p map([1, 2, 3]) { |v| v * 2 }

############################
# p [1, 2, 3].select { |v| v.even? }

# def select(list, &function)
#   list.reduce([]) do |a, v|
#     a.push(v) if function.call(v)
#     a
#   end
# end
# p select([1, 2, 3]) { |v| v.even? }
############################

############################
# p [1, 2, 3].find { |v| v.even? }

# def find(list, &function)
#   list.reduce(nil) { |_, v| break v if function.call(v) }
# end
# p find([1, 2, 3]) { |v| v.even? }
############################
############################
# p [1, 2, 3].count
# p [1, 2, 3].tally
# p [1, 2, 3].count(2)

# p [1, 2, 3].count { |v| v.even? }
# p [1, 2, 3].count { |v| v < 3 }

# # tally_by
# p [1, 2, 3].map { |v| v.even? }.tally

# def tally_by(list, &function)
#   init = Hash.new(0)

#   list.reduce(init) do |a, v|
#     key = function.call(v)

#     a[key] += 1
#     a
#   end
# end
# p tally_by([1, 2, 3]) { |v| v.even? }
############################
############################
# def select_map(list, &function)
#   list.reduce([]) do |a, v|
#     result = function.call(v)

#     a.push(result) if result
#     a
#   end
# end

# p select_map([1, 2, 3, 4]) { |v| v.even? }
# p select_map([1, 2, 3, 4]) { |v| v < 4 }

############################

# numbers = [5, 6, 7, 8]
# element = 6
# result = false

# numbers.each { |number| result = true if number == element }

# p result

# element = 3
# result = false

# numbers.each { |number| result = true if number == element }

# p result

# p numbers.include?(6)
####################################
# friends = %w[Sharon Leo Leila Brian Arun]

# invited_list = friends.select { |friend| friend != 'Brian' }

# p invited_list.include?('Brian')
####################################
# numbers = [21, 42, 303, 499, 550, 811]

# p numbers.any? { |number| number > 500 }

# h = { a: 19, b: 2, c: 9 }
# h.each { |pair| p pair }
# p h.any? { |pair| pair == [:a, 1] }
# p h.any? { |k, v| v == 1 }

# fruits = %w[apple banana strawberry pineapple]
# p fruits.all? { |fruit| fruit.length > 3 }
# p fruits.all? { |fruit| fruit.length > 6 }

# h = {}
# p h.all? { |k, v| k == ';sdfsfds' }

# fruits = %w[apple banana strawberry pineapplesssssssssssssssssss]

# p fruits.none? { |fruit| fruit.length > 10 }

# def caesar_cipher(str, shift_factor)
#   str.split('').map { |letter| (letter.ord + shift_factor).chr }.join
# end

# puts caesar_cipher('What a string!', 5)
##########################################3
# number of elements n - 1

def simple_swap(a, b)
  tmp = b
  b = a
  a = tmp
  puts "#{a} #{b}"
end

def swap(arr, index_a, index_b)
  tmp = arr[index_b]
  arr[index_b] = arr[index_a]
  arr[index_a] = tmp
end

def bubble_sort(arr)
  pass = 1
  max_pass = arr.length - 1
  while pass <= max_pass
    arr.each_with_index do |num, i|
      if i < arr.length - 1
        a = num
        b = arr[i + 1]
        swap(arr, i, i + 1) if a > b
      end
    end
    pass += 1
  end
  arr
end

p bubble_sort([3, 2, 1])
p bubble_sort([10, 9, 8, 7, 6, 5, 4, 3, 2, 1])
p bubble_sort([4, 3, 78, 2, 0, 2])
# => [0,2,2,3,4,78]
