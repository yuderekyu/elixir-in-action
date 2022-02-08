# lists are used to manage dynamic, variable-sized collections of data
# work like singly linked lists - to do something with the list, you have to traverse it
# most operations have an O(n) complexity
new_list = [8, :value, true]

# use [head | tail] syntax to append a new element to the top of the list.
# O(1) to push or pop element from top. this is because no memory copying of the n - 1 elements of the list
new_list = [:new_element | new_list]

# get head of list
# O(1) - reads 'head' from (head | tail) pair
hd(new_list)

# get tail of list
# O(1) - reads 'tail' from (head | tail) pair
tl(new_list)
