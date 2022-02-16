defmodule Fraction do
  # to define a struct, use the defstruct macro
  defstruct a: nil, b: nil

	def new(a, b) do
    # wrapper around the %Struct() syntax
    %Fraction{a: a, b: b}
  end

  def value(%Fraction{a: a, b: b}) do
    a / b
  end

  def add(%Fraction{a: a1, b: b1}, %Fraction{a: a2, b: b2}) do
    new(
      a1 * b2 + a2 * b1,
      b1 * b2
      )
  end
end

one_half = Fraction.new(1,2)

# pattern match
%Fraction{a: a1, b: b2} = one_half
