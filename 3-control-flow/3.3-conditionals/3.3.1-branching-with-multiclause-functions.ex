# test if a list is empty by taking advantage of [head | tail] construct
defmodule TestList do
  def empty?([]), do: true
  def empty?([_ | _]), do: false
end

# use pattern matching to create polymorphic functions that behave differently depending on input
defmodule Polymorphic do
  def double(x) when is_number(x) do
    x * 2
  end

  def double(x) when is_binary(x) do
    x <> x
  end
end

# power of multiclauses start to show via recursion
defmodule factorial do
  def fact(0) do
    1
  end

  def fact(n) do
    n * fact(n - 1)
  end
end

# recursion with a list (singly linked list)
defmodule ListHelper do
  def sum([]) do
    0
  end

  def sum([head | tail]) do
    head + sum(tail)
  end
end

# multiclause forces you to layer code into many small functions and push conditional logic deeper into lower layers.
# makes it possible to implement all kinds of branching that are based on values or types of function arguments.
# higher level functions remain focused on principal flow and the code is arguably more self-descriptive
