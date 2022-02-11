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

# remove capture operator parentheses?
# '''
# elixir provides optional parentheses. you can remove parentheses on all calls with at least one argument
# in practice, developers prefer to add parentheses to most of their calls.
# they are skipped main in Elixir's control-flow constructs, such as defmodule, if, case, etc, and in certain DSLs"
#
# https://hexdocs.pm/elixir/1.13.3/syntax-reference.html#optional-parentheses
# '''
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

# above breaks if list does not exclusively contain numbers
# below relies on multiclause lambda
Enum.reduce(
  [1, 2, , :x, 3, 'test'],
  0,
  fn
    element, sum when is_number(element) ->
      sum + element

    _, sum -> sum
  end
)

# opinion: avoid multi clause lambda in favor of multiple functions
defmodule NumHelper do
  def sum_nums(enumerable) do
    Enum.reduce(enumerable, 0, &add_num/2)
  end

  # move iteration step into a separate, private function
  defp add_num(current, result) when is_number(current) do
    current + result
  end

  defp add_num(_, result) do
    result
  end
end
