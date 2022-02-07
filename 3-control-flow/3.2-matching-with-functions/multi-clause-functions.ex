defmodule Geometry do
  def area({:rectangle, a, b}) do
    a * b
  end

  def area({:square, a}) do
    a * a
  end

  def area({:circle, r}) do
    r * r * 3.14
  end

  # additional clause that handles invalid input.
  # note on runtime order: if this was placed first, you'd always get an error
  def area(unknown) do
    {:error, {:unknown_shape, unknown}}
  end
end

# iex multi-clause-functions.ex
# Geometry.area({:rectangle, 4, 5})
# 20

# Geometry.area({:square, 4})
# 16

# Geometry.area({:gibberish})
# {:error, {:unknown_shape, {:gibberish}}}
