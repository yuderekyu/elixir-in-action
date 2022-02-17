# in elixir, modules are in charge of abstracting the data and providing operations to manipulate and query that data, but the data is never hidden.

# notice how mapset is printed in a special way, using #MapSet<>. when a result is printed to the shell Kernal.inpsect/1 is called to transform the structure into an inspected string.
mapset = Mapset.new([:monday, :tuesday])
# MapSet<[:monday, :tuesday]>

# occasionally, you may want to see the pure data structure, without this decorated output. to do so, provide a special option to the inspect fn
IO.puts(inspect(mapset, structs: false))

# use IO.inspect for debugging.
Fraction.new(1,4)
|> IO.inspect()
|> Fraction.add(Fraction.new(1,4))
|> IO.inspect()
|> Fraction.add(Fraction.new(1,2))
|> IO.inspect()
|> Fraction.value()
