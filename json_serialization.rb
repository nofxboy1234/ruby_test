# require 'json'
# pp JSON.load File.read('test.json')

require 'json'

class Person
  ...
  def to_json
    JSON.dump ({
      :name => @name,
      :age => @age,
      :gender => @gender
    })
  end

  def self.from_json(string)
    data = JSON.load string
    self.new(data['name'], data['age'], data['gender'])
  end
  ...
end

# {
#   'name' => 'David',
#   'height' => 124,
#   'age' => 28,
#   'children' => {
#     'John' => {
#       'age' => 1,
#       'height' => 10,
#     },
#     'Adam' => {
#       'age' => 2,
#       'height' => 20,
#     },
#     'Robert' => {
#       'age' => 3,
#       'height' => 30,
#     },
#   },
#   'traits' => %w[smart nice caring],
# }
