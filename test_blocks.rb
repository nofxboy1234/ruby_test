# def logger
#   yield
# end

# logger { puts 'hello from the block' }

# logger { p [1, 2, 3] }
#########################################
# def double_vision
#   yield
#   yield
# end

# double_vision { puts 'How many fingers am I holding up?' }
############################################3
# def love_language
#   yield('Ruby')
#   yield('Rails')
# end

# love_language { |lang| puts "I love #{lang}" }
############################################
# @transactions = [10, -15, 25, 30, -24, -70, 999]

# def transaction_statement
#   @transactions.each { |transaction| yield transaction }
# end

# transaction_statement { |transaction| p '%0.2f' % transaction }
############################################
# @transactions = [10, -15, 25, 30, -24, -70, 999]

# def transaction_statement
#   @transactions.each { |transaction| p yield transaction }
# end

# transaction_statement { |transaction| '%0.2f' % transaction }
############################################

# @transactions = [10, -15, 25, 30, -24, -70, 999]

# def transaction_statement
#   formatted_transactions = []
#   @transactions.each do |transaction|
#     formatted_transactions << yield(transaction)
#   end

#   p formatted_transactions
# end

# transaction_statement { |transaction| '%0.2f' % transaction }
############################################
# def say_something
#   yield
# end

# say_something { |word| puts "And then I said: #{word}" }
############################################
# def mad_libs
#   yield('cool', 'beans', 'burrito')
# end

# mad_libs { |adjective, noun| puts "I said #{adjective} #{noun}!" }
############################################
# def awesome_method
#   hash = { a: 'apple', b: 'banana', c: 'cookie' }

#   hash.each { |key, value| yield key, value }
# end

# awesome_method { |key, value| puts "#{key}: #{value}" }
############################################

# def simple_method
#   yield
# end

# simple_method
############################################
# def maybe_block
#   puts 'block party' if block_given?
#   puts 'executed regardless'
# end

# maybe_block

# maybe_block {}
############################################
# p [0, 1, 2].count
# p [0, 1, 2, 2].count(2)
# p [0, 1, 2, 3].count { |element| element < 2 }
############################################
# my_lambda = lambda { puts 'my lambda' }

# my_other_lambda = -> { puts 'hello from the other side' }
############################################

# my_lambda = -> { puts 'high five' }
# my_lambda.call
############################################

# my_name = ->(name) { puts "hello #{name}" }

# my_age = lambda { |age| puts "I am #{age} years old" }

# my_name.call('tim')

# my_age.call(78)
############################################

# my_name = ->(name) { puts "hello #{name}" }

# my_name.call('tim')
# my_name.('tim')
# my_name['tim']
# my_name.=== 'tim'
############################################
# a_proc = Proc.new { puts 'this is a proc' }
# a_proc = proc { puts 'this is a proc' }

# a_proc.call
############################################
# a_proc = Proc.new { |name, age| puts "name: #{name} --- age: #{age}" }
# a_proc.call('tim', 80)
############################################
# a_proc = Proc.new { |a, b| puts "a: #{a} --- b: #{b}" }
# a_proc.call('apple')

# nested_array = [[1, 2], [3, 4], [5, 6]]
# p nested_array.select { |a, b| a + b > 10 }
############################################
# a_proc = lambda { |a, b| puts "a: #{a} --- b: #{b}" }

# a_proc.call('apple')

# a_proc.call('apple', 'banana', 'cake')
############################################

# a_lambda = -> { return 1 }

# p a_lambda.call
############################################
# a_proc = Proc.new { return }

# a_proc.call
#####################################

# def my_method
#   a_proc = Proc.new { return }
#   puts 'this line will be printed'
#   a_proc.call
#   puts 'this line is never reached'
# end

# my_method
##########################
# my_proc = Proc.new { |name = 'bob'| puts name }
# my_proc.call

# my_lambda = ->(name = 'r2d2') { puts name }
# my_lambda.call
###########################
# def my_method(useful_arg)
#   useful_arg.call
# end

# my_lambda = -> { puts 'lambda' }
# my_proc = Proc.new { puts 'proc' }

# my_method(my_lambda)

# my_method(my_proc)
#############################
# def cool_method(&my_block)
#   my_block.call
# end

# cool_method { puts 'cool' }
#######################
# def cool_method(a = 1, b = 2, &my_block)
#   p a
#   p b
#   my_block.call if block_given?
# end

# cool_method { puts 'cool' }
# cool_method(8, 9) { puts 'cool' }
# cool_method(8, 9)
##########################3

# arr = %w[1 2 3]

# p arr.map { |element| element.to_i }
# p arr.map(&:to_i)

# class Klass
#   def hello(*args)
#     'Hello ' + args.join(' ')
#   end
# end
# k = Klass.new
# p k.send :hello, 'gentle', 'readers'
##########################3
# def cool_method
#   yield
# end

# my_proc = Proc.new { puts 'proc party' }

# cool_method(&my_proc)
# cool_method(my_proc)
##########################3

# def cool_method(an_arg)
#   an_arg.call
# end

# a_proc = Proc.new { puts 'procodile hunter' }

# cool_method(&a_proc)
##########################3
# [1, 2, 3].each { |num| puts num }

# def print_once
#   yield
#   yield
# end

# print_once { puts 'Hello' }
##################3
# def one_two_three
#   yield 1
#   yield 2
#   yield 3
# end

# one_two_three { |number| puts number * 10 }
##################
# def call_a_block(block)
#   block.call
# end

# def explicit_block(&block)
#   block.call
#   call_a_block(block)
# end

# explicit_block { puts 'Explicit block called' }
##################

# def do_something_with_block
#   return p 'no block given' unless block_given?
#   yield
# end

# do_something_with_block { puts 'a block WAS given' }
# do_something_with_block
############################3
# say_something = -> { puts 'This is a lambda' }

# say_something.call
#######################
# say_something = lambda { |something| puts 'This is a lambda, ' + something }
# say_something = ->(something) { puts 'This is a lambda, ' + something }

# say_something.call('hello')
#######################
# my_proc = Proc.new { |x| puts x }
#######################
# t = Proc.new { |x, y| p "I don't care about arguments! --- #{x}" }
# t.call
#######################
# my_lambda = -> { return 1 }
# puts "Lambda result: #{my_lambda.call}"

# # Should raise exception
# my_proc = Proc.new { return 1 }
# puts "Proc result: #{my_proc.call}"
#######################

# def call_proc
#   puts 'Before proc'
#   my_proc = Proc.new { return 2 }
#   my_proc.call
#   puts 'After proc'
# end

# p call_proc
#######################
# def call_proc(my_proc)
#   count = 500
#   my_proc.call
#   puts 'here'
# end

# count = 1
# # my_proc = Proc.new { puts count }
# my_proc =
#   Proc.new do
#     puts count
#     return
#   end

# call_proc(my_proc)
#######################
# def return_binding
#   foo = 100
#   binding
# end

# puts return_binding.class
# puts return_binding.eval('foo')
# # puts foo
#######################

# curry
# add = lambda { |a, b| a + b }
# p add.call(100, 200)

# increment = add.curry.call(1)
# p increment.call(100)
#######################
# def curryable_function
#   ->(arg1, arg2) { "#{arg1} is better than #{arg2}!" }
# end

# # curried = curryable_function.curry(2)['peanut butter']
# curried = curryable_function.curry(2).call('peanut butter')
# p curried['nutella']
# p curried.call('nutella')
#######################
# a = lambda { |x| puts x }
# # a.call
# a.call('hello')
#######################
# a = lambda { |x = 'hello world'| puts x }
# a.call
#######################
# def something
#   o = Proc.new { return }
#   o.call
#   puts 'after'
# end

# something
#######################
# def something_else
#   o = lambda { return }
#   o.call
#   puts 'after'
# end

# something_else
#######################
# marco = 'polo'
# game = lambda { puts marco }
# game.call

# marco = 'rubio'
# game.call
#######################
# l = lambda { |x| puts x }
# l.call('hello')
# l.('hello')
# l['hello']
#######################
