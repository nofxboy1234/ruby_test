# class Viking
#   @@starting_health = 200
#   attr_accessor :name, :age, :health, :strength
#   def initialize(name, age, strength)
#     @name = name
#     @age = age
#     @health = @@starting_health
#     @strength = strength
#   end

#   def attack(enemy)
#     # code to fight
#   end

#   def take_damage(damage)
#     # self.health -= damage
#     @health -= damage
#     # self.shout('OUCH!')
#     shout('OUCH!')
#   end

#   def shout(str)
#     puts str
#     puts age
#   end

#   def sleep
#     @health += 1 unless health >= 99 # fail
#   end
# end

# oleg = Viking.new('Oleg', 19, 8)
# p oleg
# p oleg.health
# p oleg.health = 87
# p oleg
# oleg.take_damage(37)
# p oleg
# oleg.sleep
# p oleg
# oleg.shout('hello')

# class Viking
#   @@abc = 48
#   def initialize(name, health, age, strength)
#     # set variables
#     @health = health
#   end

#   def test
#     @health = 2
#   end

#   def self.get_abc
#     p @health
#     p @@abc
#   end

#   def show_health
#     p @health
#     p @@abc
#   end
# end

# v = Viking.new('a', 100, 19, 8)
# p v
# v.test
# p v
# Viking.get_abc
# v.show_health

# class Viking
#   def initialize(name, health, age, strength)
#     # set variables
#     @name = name
#     @health = health
#     @age = age
#     @strength = strength
#   end

#   def self.create_warrior(name)
#     age = rand * 20 + 15
#     health = [age * 5, 120].min
#     strength = [age / 2, 10].min
#     Viking.new(name, health, age, strength)
#   end

#   def self.random_name
#     %w[Erik Lars Leif].sample
#   end

#   def self.silver_to_gold(silver_pieces)
#     silver_pieces / 10
#   end

#   class << self
#     def gold_to_silver(gold_pieces)
#       gold_pieces * 10
#     end
#   end
# end

# warrior1 = Viking.create_warrior(Viking.random_name)
# p Viking.silver_to_gold(10)
# p Viking.gold_to_silver()
# p warrior1

# class Cinema
#   attr_accessor :name, :location

#   def initialize(name, location)
#     @name = name
#     @location = location
#     @movies = []
#   end

#   def add_movie(movie)
#     @movies << movie
#     movie.cinema = self
#   end
# end

# class Movie
#   attr_accessor :title, :showtime, :cinema

#   @@all = []

#   def initialize(title, showtime)
#     @title = title
#     @showtime = showtime
#     @@all << self
#   end
# end

# cobble_hill = Cinema.new('Cobble Hill Cinema', 'Court St, Brooklyn')
# pp cobble_hill
# spider_man = Movie.new('Spider-Man', '9:00')
# pp spider_man

# cobble_hill.add_movie(spider_man)
# pp cobble_hill

# a = 10
# b = '42'

# values = [
#   42,
#   'a',
#   'r',
#   9,
#   5,
#   10_022,
#   8.7,
#   'sharon',
#   'Libya',
#   'Mars',
#   '12',
#   98,
#   rand + rand,
#   { dog: 'cat' },
#   100,
#   nil,
#   200.0000,
#   Object,
#   680,
#   3.14,
#   'Steve',
#   78,
#   'Argo',
# ].shuffle

# while values.length > 0
#   a = values.pop
#   b = values.pop

#   begin
#     a + b
#   rescue StandardError
#     puts "Could not add variables a (#{a.class}) and b (#{b.class})"
#   else
#     puts "a + b is #{a + b}"
#   end
# end

# while 1
#   puts 'Enter a number>>'
#   begin
#     num = Kernel.gets.match(/\d+/)[0]
#   rescue StandardError
#     puts 'Erroneous input! Try again...'
#   else
#     puts "#{num} + 1 is: #{num.to_i + 1}"
#   end
# end

# class Animal
#   def initialize(name)
#   end
# end

# class Bear < Animal
#   def initialize(color, name)
#     super(name)
#     @color = color
#   end
# end

# pp bear = Bear.new('black', 'bob')

############################
# module Swimmable
#   def swim
#     "I'm swimming!"
#   end
# end

# class Animal
# end

# class Fish < Animal
#   include Swimmable
# end

# class Mammal < Animal
# end

# class Cat < Mammal
# end

# class Dog < Mammal
#   # include Swimmable
#   extend Swimmable
# end

# sparky = Dog.new
# neemo = Fish.new
# paws = Cat.new

# # p paws.swim
# p Dog.swim

# sparky.extend(Swimmable)
# p sparky.swim
# p neemo.swim
############################

# module Walkable
#   def walk
#     "I'm walking."
#   end
# end

# module Swimmable
#   def swim
#     "I'm swimming."
#   end
# end

# module Climbable
#   def climb
#     "I'm climbing."
#   end
# end

# class Animal
#   include Walkable

#   def speak
#     "I'm an animal, and I speak!"
#   end
# end

# class GoodDog < Animal
#   include Swimmable
#   include Climbable
# end

# # puts '---Animal method lookup---'
# # puts Animal.ancestors

# # fido = Animal.new
# # p fido.speak
# # p fido.walk
# # p fido.swim

# puts '---GoodDog method lookup---'
# puts GoodDog.ancestors
######################################

# module Mammal
#   def self.some_out_of_place_method(num)
#     num**2
#   end
# end

# p value = Mammal.some_out_of_place_method(4)
##########################################
# class Animal
#   def get_cat_shared_secret(cat)
#     p cat.secret_shared_between_sibling_instances_and_children
#   end
# end

# class Dog
#   def get_cat_secret(cat)
#     # p cat.secret
#     cat.do_stuff
#   end

#   def secret
#     'Woof'
#   end
# end

# class Cat < Animal
#   def get_dog_secret(dog)
#     p dog.secret
#   end

#   def get_cat_secret(cat)
#     p cat.secret
#   end

#   def get_shared_secret(cat)
#     cat.secret_shared_between_sibling_instances_and_children
#   end

#   def do_stuff
#     p secret
#   end

#   protected

#   def secret_shared_between_sibling_instances_and_children
#     'SHARED SECRET'
#   end

#   private

#   def secret
#     'Meow'
#   end
# end

# class Kitten < Cat
#   def get_shared_secret(cat)
#     cat.secret_shared_between_sibling_instances_and_children
#   end
# end

# dog = Dog.new
# cat = Cat.new
# cat2 = Cat.new

# # p cat.get_shared_secret(cat2)
# # animal = Animal.new
# # animal.get_cat_shared_secret(cat)

# kitten = Kitten.new
# p kitten.get_shared_secret(cat)
#################################################

# class GoodDog
#   DOG_YEARS = 7

#   attr_accessor :name, :age

#   def initialize(n, a)
#     self.name = n
#     self.age = a
#   end

#   def say_hello
#     'hello!'
#   end

#   def public_disclosure
#     # p say_hello
#     p self.say_hello
#     # human_years = 99
#     "#{self.name} in human years is #{human_years}"
#   end

#   private

#   def human_years
#     age * DOG_YEARS
#   end
# end

# sparky = GoodDog.new('Sparky', 4)
# # sparky.human_years
# p sparky.public_disclosure
#####################################################

# class Person
#   def initialize(age)
#     @age = age
#   end

#   def older?(other_person)
#     age > other_person.age
#   end

#   protected

#   attr_reader :age
# end

# malory = Person.new(64)
# sterling = Person.new(42)

# malory.older?(sterling) # => true
# sterling.older?(malory) # => false

# malory.age
#####################################################
# class Parent
#   def say_hi
#     p 'Hi from Parent'
#   end
# end

# class Child
#   def say_hi
#     p 'Hi from Child'
#   end

#   def send
#     p 'send from Child...'
#   end

#   def instance_of?
#     p 'I am a fake instance'
#   end
# end

# heir = Child.new
# p heir.instance_of? Child
#####################################################
