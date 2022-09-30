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
  swapped = true
  while pass <= max_pass
    break if !swapped
    p "pass: #{pass}"
    arr.each_with_index do |num, i|
      if i < arr.length - (1 * pass)
        a = num
        b = arr[i + 1]
        if a > b
          swap(arr, i, i + 1)
          swapped = true
        else
          swapped = false
        end
      end
    end
    pass += 1
  end
  arr
end

# p bubble_sort([3, 2, 1])
# p bubble_sort([10, 9, 8, 7, 6, 5, 4, 3, 2, 1])
# p bubble_sort([4, 3, 78, 2, 0, 2])
# p bubble_sort(
#     [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20],
#   )
# => [0,2,2,3,4,78]
# p bubble_sort(%w[d c b a])
p bubble_sort(%w[d a c b])
