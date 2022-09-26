my_hash = {
  'a random word' => 'ahoy',
  "Dorothy's math test score" => 94,
  'an array' => [1, 2, 3],
  'an empty hash within a hash' => {
  },
}

my_hash = Hash.new
p my_hash

hash = { 9 => 'nine', :six => 6 }
p hash

shoes = { 'summer' => 'sandals', 'winter' => 'boots' }
p shoes['summer']
p shoes['hiking']
# p shoes.fetch('hiking')
p shoes.fetch('hiking', 'hiking boots')

shoes['fall'] = 'sneakers'
p shoes

shoes['summer'] = 'flip-flops'
p shoes

shoes.delete('summer')
p shoes

books = { 'Infinite Jest' => 'David Foster', 'Into the Wild' => 'Jon Krakauer' }
p books.keys
p books.values

hash1 = { 'a' => 100, 'b' => 200 }
hash2 = { 'b' => 254, 'c' => 300 }
p hash1.merge(hash2)

american_cars = { chevrolet: 'Corvette', ford: 'Mustang', dodge: 'Ram' }
japanese_cars = { honda: 'Accord', toyota: 'Corolla', nissan: 'Altima' }
p american_cars[:ford]
p japanese_cars[:honda]

person = { name: 'bob', height: '6 ft', weight: '160 lbs', hair: 'brown' }
person.each { |key, value| puts "Bob's #{key} is #{value}" }

def greeting(name, options = {})
  if options.empty?
    puts "Hi, my name is #{name}"
  else
    puts "Hi, my name is #{name} and I'm #{options[:age]}" +
           " years old and I live in #{options[:city]}."
  end
end

greeting('Bob')
greeting('Bob', { age: 62, city: 'New York City' })
greeting('Bob', age: 62, city: 'New York City')

z = { 'height' => '6 ft' }
p z
puts ({ 9 => '99 ft' })
x = { 'height' => '17 ft' }
puts x

name_and_age = { Bob: 42, Steve: 31 }
p name_and_age.key?(:Steve)
p name_and_age.select { |k, v| k == :Bob }
p name_and_age.fetch(:Steve)
p name_and_age.fetch(:Larry, "Larry isn't in this hash")
p name_and_age.to_a
p name_and_age.keys
p name_and_age.values

p name_and_age.keys.each { |k| puts k }

family = {
  uncles: %w[bob joe steve],
  sisters: %w[jane jill beth],
  brothers: %w[frank rob david],
  aunts: %w[mary sally susan],
}

immediate_family = family.select { |k, v| k == :sisters || k == :brothers }
arr = immediate_family.values.flatten
p arr

h1 = { a: 1, b: 2 }
h2 = { b: 4, c: 8 }
p h1.merge(h2)
p h1

h1.merge!(h2)
p h1

h1.keys.each { |k| puts k }
h1.each_key { |k| puts k }
h1.values.each { |v| puts v }
h1.each_value { |v| puts v }

h1.each { |k, v| puts "#{k} - #{v}" }
