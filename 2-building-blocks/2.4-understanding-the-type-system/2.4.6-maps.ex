# 1. Dynamically Sized Maps. used to power dynamically sized key/value structures
squares = %{ 1 => 1, 2 => 4, 3 => 9}

# or
squares = Map.new([{1, 1}, {2, 4}, {3, 9}])

# fetch a given key
squares[3]
# output - 9

# fetch a given key, otherwise return a default value if the key is not found
Map.get(squares, 4, :not_found)
# output - :not_found

# to precisely distinguish between knowing whether there's no value, or if the value is :not_found
Map.fetch(squares, 4)
# output - :error

# to proceed only if the value exists, otherwise throw an error
Map.fetch(squares, 4)
# output - (KeyError!)...

# to store a new element into the map
Map.put(squares, 4, 16)



# 2. Structured Data. combine a couple of fields into a single structure
# the common pattern is to provide all the fields whiel creating the map, using atoms as keys.
# if the value for some field isn't available, you set it to nil.
bob = %{:name => "bob", :age => 25, :works_at => "dscout"}

# if all keys are atoms, use shorter syntax
bob = %{name: "bob", age: 25, works_at: "dscout"}

# retrieve field
bob[:works_at]
# or
bob.works_at

# change value. you can only modify values that already exist in the map.
next_years_bob = %{bob | age: 26}
# change multiple attributes.
next_years_bob = %{bob | age: 26, works_at: "chscout"}
