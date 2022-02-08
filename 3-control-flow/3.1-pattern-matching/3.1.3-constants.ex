# 3.1.3 - constants
# common tuple pattern, where the first element is a constant atom.
person = {:person, "bob", 25}
# later, rely on this knowledge retrieve individual attributes of the person
{:person, name, age} = person
