# Enum.each
Enum.each(
  [1, 2, 3],
  &IO.puts/1
)

# Enum works on enumerables. Lists, ranges, maps, and MapSet are examples.

# Enum.map
Enum.map(
  [1, 2, 3],
  fn x -> 2 * x end
)

# to make definition denser, convert lambda to use capture operator
# use &n as the placeholder for the nth argument
Enum.map(
  [1, 2, 3],
  &(2 * &1) # the 1st argument of the lambda
)

# Enum.filter
# get all odd numbers in a list
Enum.filter(
  [1, 2, 3],
  fn x -> rem(x, 2) == 1 end
)
# condense to capture operator
Enum.filter(
  [1, 2, 3],
  &(rem(&1, 2) == 1)
)

Enum.filter(
  [1, 2, 3],
  &rem(&1, 2) == 1
)

# Enum.reduce
# calculate the sum of a list
Enum.reduce(
  [1, 2, 3],
  0,
  fn element, sum -> sum + element end
)

# use capture operator
# many operators are functions. turn an operator into a lambda by calling &+/2, &*/2, and so on
# & signifies the start to create an anonymous function
# the right hand side is the return value format
Enum.reduce([1, 2, 3], 0, &+/2) # q: why not &(+/2) ?
