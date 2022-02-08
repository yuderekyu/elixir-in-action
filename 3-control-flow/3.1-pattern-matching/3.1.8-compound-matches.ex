# 3.1.8 compound matches
:calendar.local_time()
# {{2022, 2, 8}, {13, 21, 32}}

# retrieve the function's total result (datetime) as well as current hour of the day
date_time = {_, {hour, _, _}} = :calendar.local_time()
# or flip the order around
{_, {hour, _, _}} = date_time = :calendar.local_time()
# now we have both date_time and hour. they both are pattern matching :calendar.local_time

# date_time
# {{2022, 2, 8}, {13, 21, 32}}

# hour
# 13

# general behavior
# in a pattern matching expression, you perform two different tasks:
# 1. assert an expectation about the right side term. if these expectations aren't met, an error is raised
# 2. you bind some parts of the term to variables from the pattern
