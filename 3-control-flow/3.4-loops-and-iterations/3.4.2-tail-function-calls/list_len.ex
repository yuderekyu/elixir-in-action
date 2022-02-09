# create a function that calculates the length of a list
# tail recursive
defmodule ListHelperTC do
  def length(list) do
    get_length(list, 0)
  end

  # base case: return list length when list length is 0
  def get_length([], length) do
    length
  end

  def get_length([_head | tail], length) do
    get_length(tail, length + 1)
  end
end

# non tail recursive
defmodule ListHelper do
  def length([]) do
    0
  end

  def length([_head | tail]) do
    1 + length(tail)
  end
end
