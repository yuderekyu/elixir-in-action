defmodule Lishelper do
  # used by clients
  # initializes the value of current_sum
  def sum(list) do
    do_sum(0, list)
  end

  # responsible for stopping the recursion
  # matches on empty list, which is the last step of the iteration
  defp do_sum(current_sum, []) do
    current_sum
  end

  defp do_sum(current_sum, [head | tail]) do
    new_sum = head + current_sum
    do_sum(new_sum, tail) # tail call to not consume additional memory
  end
end

# if you need to run an infinite loop, tail recursion is the only way that will work
# otherwise, the choice between tail vs non tail recursion amounts to which looks like a more elegant and performant solution
