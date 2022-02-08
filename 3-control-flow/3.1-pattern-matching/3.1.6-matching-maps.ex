#3.1.6 - matching maps
%{name: name, age: age} = %{name: "bob", age: 25}
# partial matching. when matching map, left side pattern doesn't need to contain all the keys from the right side term
%{age: age} = %{name: "bob", age: 25}
