# 3.1.4 - anonymous variables
# use anonymous variable for values we are not interested in. denoted by <_>
{_, time} = :calendar.local_time()
# can add a more descriptive name
{_date, time} = :calendar.local_time()
