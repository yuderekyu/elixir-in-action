#3.1.7 - matching bitstrings and binaries
binary = <<1, 2, 3>>
<<b1, b2, b3>> = binary

# take binary apart by taking first byte into one variable and the rest into another
<<b1, rest :: binary>> = binary
# rest::binary states you expect an arbitrary-sized binary

# extract separate bits or groups of bits.
# split a single byte into two 4-bit values
<<a :: 4, b :: 4>> = << 155 >>
# a is 9 (1001)
# b is 11 (1011)

# match binary strings
<<b1, b2, b3>> = "ABC"

# more useful pattern is to match the beginning of the string
command = "ping www.example.com"
"ping " <> url = command
# url is "www.example.com"
