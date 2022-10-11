# fname = 'sample.txt'
# somefile = File.open(fname, 'w')
# somefile.puts 'Hello file!'
# somefile.close

# File.open('sample.txt', 'w') { |somefile| somefile.puts 'Hello files!!!' }

# contents = File.open('sample.txt', 'r') { |file| file.read }
# puts contents

# File.open('sample.txt').readlines.each { |line| puts line }

# file = File.open('sample.txt', 'r')
# while !file.eof?
#   line = file.readline
#   puts line
# end

# require 'open-uri'
# url = 'http://ruby.bastardsbook.com/files/fundamentals/hamlet.txt'
# puts URI.open(url).readline

require 'open-uri'
url = 'http://ruby.bastardsbook.com/files/fundamentals/hamlet.txt'
local_fname = 'hamlet.txt'
File.open(local_fname, 'w') { |file| file.write(URI.open(url).read) }

File.open(local_fname, 'r') do |file|
  file.readlines.each_with_index { |line, idx| puts line if idx % 42 == 41 }
end
