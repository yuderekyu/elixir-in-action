# if
def max(a, b) do
  if a > b do
    a
  else
    b
  end

end

# unless
# equivalent to if (not ..)
def max(a, b) do
  unless a >= b do
    b
  else
    a
  end
end

# cond
# takes a list of expressions and executes the block of the first expression that evaluates to a truthy value
def max(a, b) do
  cond do
    a >= b -> a
    # default clause. ensures that the condition will always be satisfied
    true -> b
  end
end

# case
# the provided expression is first evaluated
# the result is matched against the given clauses
def max(a, b) do
  case a >= b do
    true -> a
    false -> b
  end
end
