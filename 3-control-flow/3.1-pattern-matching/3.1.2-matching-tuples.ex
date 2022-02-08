# Pattern Matching
# at runtime, the left side of the = operator is matched to the right side
# left side is a pattern. right side is an expression that evaluates to an elixir term

# 3.1.2 - matching tuples
{name, age} = {"bob", 25}
# the result of the expression is always the right side term you are matching against
# returns {"bob", 25}
