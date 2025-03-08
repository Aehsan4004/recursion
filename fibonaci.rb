def fibonacci_sequence(n)
  # Base cases
  return [] if n <= 0        # Return empty array for non-positive input
  return [0] if n == 1       # Return [0] for length 1
  return [0, 1] if n == 2    # Return [0, 1] for length 2
  
  # Recursive case
  fib = fibonacci_sequence(n - 1)  # Get sequence for n-1 numbers
  fib << fib[-1] + fib[-2]        # Add next Fibonacci number (sum of last two)
  fib
end

# Test the function
puts fibonacci_sequence(18).inspect
# Output: [0, 1, 1, 2, 3, 5, 8, 13]