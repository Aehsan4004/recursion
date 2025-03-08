def merge_sort(array)
  # Base case: if array has 1 or fewer elements, it's already sorted
  return array if array.length <= 1
  
  # Find the middle point
  mid = array.length / 2
  
  # Recursively sort left and right halves
  left = merge_sort(array[0...mid])
  right = merge_sort(array[mid..-1])
  
  # Merge the sorted halves recursively
  merge_recursive(left, right, [])
end

def merge_recursive(left, right, result)
  # Base case: if both arrays are empty, return the result
  return result if left.empty? && right.empty?
  
  # If left is empty, append all of right to result
  if left.empty?
    return result + right
  # If right is empty, append all of left to result
  elsif right.empty?
    return result + left
  # Compare heads of both arrays and recurse
  elsif left[0] <= right[0]
    result << left[0]
    merge_recursive(left[1..-1], right, result)
  else
    result << right[0]
    merge_recursive(left, right[1..-1], result)
  end
end

# Test the implementation
puts merge_sort([3, 2, 1, 13, 8, 5, 0, 1]).inspect
# Output: [0, 1, 1, 2, 3, 5, 8, 13]

puts merge_sort([105, 79, 100, 110]).inspect
# Output: [79, 100, 105, 110]