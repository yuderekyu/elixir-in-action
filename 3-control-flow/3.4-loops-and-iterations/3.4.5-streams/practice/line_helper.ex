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
    # map to a list of lengths
    |>
    # store the maximum and iterate through list.
    # if current is > maximum, update the maximum
  end
end
