# 3.1.5 - matching lists
# all elements must have the same value
[1, second, third] = [1, 2, 3]
[first, first, first] = [1, 1, 1]
# don't care about third element, but it must be present
[first, second, _] = [1, 2, 3]
