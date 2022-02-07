test_num =
  fn
    x when is_number(x) and x < 0 ->
      :negative

    0 -> :zero

    x when is_number(x) and x > 0 ->
      :positive
end

# test_num.(-1)
# :negative

# test_num.(0)
# :zero

# test_numb.(1)
# :positive
