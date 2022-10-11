# grade = 'C'

# case grade
# in 'A'
#   puts 'Amazing effort'
# in 'B'
#   puts 'Good work'
# in 'C'
#   puts 'Well done'
# in 'D'
#   puts 'Room for improvement'
# else
#   puts 'See me'
# end
###
# login = { username: 'hornby', password: 'iliketrains' }

# login => { username: username }

# puts "Logged in with username #{username}"
###
# input = 3

# case input
# in String
#   puts 'input was of type String'
# in Integer
#   puts 'input was of type Integer'
# end
###
# age = 15

# case age
# in a
#   puts a
# end
###
# a = 5

# case 1
# in a
#   a
# end

# puts a
########################
# a = 5

# case 1
# in ^a
#   puts 'found match'
# end
#########################
# case 3
# in 3 => a
#   puts a
# end
#########################
# case 0
# in 0 | 1 | 2
#   puts :match
# end
#########################
# some_other_value = true

# case 0
# in 0 if some_other_value
#   puts :match
# end
#########################
# arr = [1, 2]

# case arr
# in [1, 2]
#   puts :match
# in [3, 4]
#   puts :no_match
# end
#########################
# arr = [1, 2]

# case arr
# in [Integer, Integer]
#   puts :match
# in [String, String]
#   puts :no_match
# end
#########################
# arr = [1, 2, 3]

# case arr
# in [Integer, Integer]
#   puts :no_match
# in [Integer, Integer, Integer]
#   puts :found_a_match
# end
#########################
# arr = [1, 2, 3]

# case arr
# in [Integer, Integer, *]
#   puts :match
# end
#########################
# x, y, z = *[1, 2, 3]

# puts x
# puts y
# puts z

# x = *123
# p x
#########################

# def describe_args(*args)
#   puts args
#   puts args.class
# end

# describe_args(1, 2, 3)
#########################

# def describe_first_arg(x, y, z)
#   puts x
#   puts x.class
# end

# describe_first_arg(*[1, 2, 3])
#########################
# case [1, 2, 3, [4, 5]]
# in [1, 2, 3, a]
#   puts a
# end
#########################

# login = { username: 'hornby', password: 'iliketrains' }
# p login
# # p username
# login => { username: username }
# p username
# puts "Logged in with username #{username}"
#########################
# case { username: 'hornby', password: 'iliketrains' }
# in { username: username } => hash
#   p :match
#   p hash
# end

# p username
#########################
# case [1, 2, 3]
# in [*pre, 1, 2, 3, *post]
#   p pre
#   p post
# end
#########################
# case [1, 2, 3, 4, 5]
# in [*pre, 2, 3, *post]
#   p pre
#   p post
# end
#########################
# case [1, 2, 'a', 4, 'b', 'c', 7, 8, 9]
# in [*pre, String => x, String => z, *post]
#   p pre
#   p x
#   p z
#   p post
# end
#########################
# config = { db: { user: 'admin', password: 'abc123' } }

# case config
# # in db: { user: }
# #   puts "Connect with user '#{user}'"
# in connection: { username: }
#   puts "connect with user '#{username}'"
# else
#   puts 'Unrecognized structure of config'
# end
#########################
# config = { db: { user: 'admin', password: 'abc123' } }

# config => { db: { user: } } # will raise if the config's structure is unexpected

# puts "Connect with user '#{user}'"
# # Prints: "Connect with user 'admin'"
#########################

# users = [{ name: 'Alice', age: 12 }, { name: 'Bob', age: 23 }]
# p users.any? { |user| user in { name: /B/, age: 20.. } } #=> true
#########################
# expectation = 18

# # case [1, 2]
# case [18, 2]
# in [^expectation, *rest]
#   puts "matched. expectation was: #{expectation}"
#   puts rest
# else
#   puts "not matched. expectation was: #{expectation}"
# end
#########################

# jane = {
#   school: 'high',
#   schools: [{ id: 1, level: 'middle' }, { id: 2, level: 'high' }],
# }
# john = { school: 'high', schools: [{ id: 1, level: 'middle' }] }

# case jane
# in { school:, schools: [*, { id:, level: ^school }] }
#   # select the last school, level should match
#   puts "matched. school: #{id}"
# else
#   puts 'not matched'
# end
# #=> "matched. school: 2"

# case john # the specified school level is "high", but last school does not match
# in { school:, schools: [*, { id:, level: ^school }] }
#   puts "matched. school: #{id}"
# else
#   puts 'not matched'
# end
# #=> "not matched"
#########################

# class Point
#   def initialize(x, y)
#     @x, @y = x, y
#   end

#   def deconstruct
#     puts 'deconstruct called'
#     [@x, @y]
#   end

#   def deconstruct_keys(keys)
#     puts "deconstruct_keys called with #{keys.inspect}"
#     { x: @x, y: @y }
#   end
# end

# case Point.new(1, -2)
# in [px, Integer]
#   # sub-patterns and variable binding works
#   puts "matched: #{px}"
# else
#   puts 'not matched'
# end

# case Point.new(1, -2)
# in x: 0.. => px
#   puts "matched: #{px}"
# else
#   puts 'not matched'
# end
#########################
# case Point.new(1, -2)
# in { x: 0.. => px, **rest }
#   puts "matched: #{px}"
# else
#   puts 'not matched'
# end
#########################

# case [1, 2]
# in [a, b] if b == a * 2
#   puts 'matched'
#   puts a
#   puts b
# else
#   puts 'not matched'
# end
#########################
# # Warning[:experimental] = false
# [9] => [*, a, *]
# puts a

# [8] => [*, a, *]
# puts a
#########################

# case [0, 1]
# in [a, 2]
#   puts 'not matched'
# in b
#   puts 'matched'
#   p b
# in c
#   puts 'not matched'
# end
# p a
# p c
#########################
# p (1..10) === 1
# p (1..10).include?(1)

# SUPPORTS_PATTERN_MATCH_VERSIONS = '2.7.0'..'3.0.0'
# p SUPPORTS_PATTERN_MATCH_VERSIONS === '2.7.5'
