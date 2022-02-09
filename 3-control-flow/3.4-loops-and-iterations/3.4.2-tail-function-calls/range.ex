# takes two integers, from and to, and returns a list of all numbers in the given range
defmodule RangeHelper do
  # base case
  def range(from, to) when from > to do
    []
  end

  def range(from, to) do
    [from | range(from + 1, to)]
  end
end

defmodule RangeHelperTC do
  def range(from, to) do
    get_range(from, to, [])
  end

  defp get_range(from, to, result), where from > to do
    result
  end

  defp get_range(from, to, result) do
    # start from the last position, build the list "bottom up". damn
    get_range(from, to - 1, [ to | result])
  end
end
