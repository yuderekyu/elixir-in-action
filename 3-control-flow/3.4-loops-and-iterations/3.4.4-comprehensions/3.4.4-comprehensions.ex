# comprehensions are syntactic sugar for filtering or mapping values into another list
for x <- [1, 2, 3] do
    x * x
end

#  perform nested iterations over multiple collections
for x <- [1, 2, 3], y <- [1, 2, 3] do
    {x, y, x * y}
end

# comprehensions can return anything that's collectable.
# collectable is an abstract term for a functional data type that can collect values.
# some examples include lists, maps, Mapset, and file streams
multiplication_table =
for x <- 1..9, y <- 1..9 do
    into: %{} do
      {{x, y}, x*y} # what?
    end
end
