# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8

# Time complexity: O(n) - linear, because the number of loops is determined by the value of the input integer, "n."
# Space complexity: Constant, because the algorithm only ever tracks 2 values, regardless of
# the input integer.
def fibonacci(n)
  if n == nil || n < 0
    raise ArgumentError, "The fibonacci number does not exist for #{n}"
  else
    fib = 0
    x = 1
    n.times do
      fib += x
      x = (fib - x)
    end
    return fib
  end
end
