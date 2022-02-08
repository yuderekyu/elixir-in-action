defmodule TestNum do
  def test(x) when x < 0 do
    :negative
  end

  def test(0) do: :zero

  def test(x) when x > 0 do
    :positive
  end
end

# TestNum.test(:not_a_number)
# :positive
# why? elixir terms can be compared with < and > even if they're not the same type
# we need to check if the input is a number.

defmodule TestNum do
  def test(x) when is_number(x) and x < 0 do
    :negative
  end

  def test(0) do: :zero

  def test(x) when is_number(x) and x > 0 do
    :positive
  end
end

# TestNum.test(:not_a_number)
# (FunctionClauseError)...

# *note: if an error is raised from inside the guard, it won't be propagated and the guard expression will return false.
# for this reason, you must internally handle these cases by matching them
