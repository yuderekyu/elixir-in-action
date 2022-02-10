defmodule ListHelperTC do
  def positive(list) do
    get_positive(list, [])
  end

  defp get_positive([], result) do
    result
  end

  # using a cond
  # defp get_positive([head | tail], result) do
  #   cond do
  #     head > 0 -> get_positive(tail, [head | result])
  #     true -> get_positive(tail, result) # default condition
  #   end
  # end

  defp get_positive([head | tail], result) when head > 0 do
    get_positive(tail, [head | result])
  end

  defp get_positive([_head | tail], result) do
    get_positive(tail, result)
  end
end

defmodule ListHelper do
  def positive([]) do
    []
  end

  def positive([head | tail]) when head > 0 do
    positive([head | positive(tail)])
  end

  # if head is <= 0, it will match below
  def positive([_ | tail]) do
    positive(tail)
  end
end

# input = [1,2,3,-1,-2,-3,5,5,-8]
# ListHelper.positive(input)
# ListHelperTC.positive(input)
