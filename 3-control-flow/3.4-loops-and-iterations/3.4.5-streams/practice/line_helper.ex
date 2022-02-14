defmodule LineHelper do
	# take a file path and return a list of numbers, with each number representing the length of the corresponding line from the file
  def lines_lengths!(path) do
    # read the file
    File.stream!(path)

    # remove trailing newline character from each line
    |> Stream.map(&String.replace(&1, "\n", ""))
    # get the length of each line

    # |> Enum.map(&String.length(&1))
    |> Enum.map(&String.length/1) # directly reference the fn w/o specifying the nth argument
  end

  # takes a file path and returns the length of the longest line in a file
  def longest_line_length!(path) do
    # read file
    File.stream!(path)
    # remove trailing newline character from each line
    |> Stream.map(&String.replace(&1, "\n", ""))
    # map to a list of lengths
    |> Stream.map(&String.length/1)
    # store the maximum and iterate through list.
    # if current is > maximum, update the maximum to the current
    |> Enum.reduce(0, &get_largest_number/2)
  end

  defp get_largest_number(current, result) when current > result do
    current
  end

  defp get_largest_number(_, result) do
    result
  end
end

# LineHelper.lines_lengths!("./line_helper.ex")
# LineHelper.longest_line_length!("./line_helper.ex")
