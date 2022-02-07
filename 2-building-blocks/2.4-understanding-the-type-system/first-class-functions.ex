print_element = fn x-> IO.puts(x) end
Enum.each(
  [1,2,3],
  print_element
)
# returns :ok (return value of Enum.each)

# equivalent
Enum.each(
  [1,2,3],
  fn x -> IO.puts(x) end
)

# equivalent
# capture operator.
# turns the full function qualifier (module name, function name, arity) into a lambda that can be assigned to a variable
Enum.each(
  [1,2,3],
  &IO.puts/1 # capture operator
)

lambda = fn x, y, z -> x * y + z end
# equivalent
lambda = &(&1, &2, &3) # wat lol
