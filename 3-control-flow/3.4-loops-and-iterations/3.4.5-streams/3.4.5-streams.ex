# Enum are eager operations.
# they immediately start iterating through the input and create a result
# using multiple Enum calls results in multiple passes on the iterable

# an alternative is to use a stream
# streams are lazy operations.
# they produce the actual result on demand.
# using streams, we can chain together multiple lazy operations, then feed them into an Enum call (lazy).
# this results in a single O(n) pass.

# example: given a list of employees, print each one prefixed by their position in the list.
employees = ["Alice", "bob", "John"]
employees
  |> Enum.with_index
  |> Enum.each(
       fn {employee, index} ->
         IO.puts("#{index + 1}. #{employee}")
       end)

# use stream to execute a single iteration instead
employees
  |> Stream.with_index
  |> Enum.each(
     fn {employee, index} ->
       IO.puts("#{index + 1}. #{employee}")
     end)
