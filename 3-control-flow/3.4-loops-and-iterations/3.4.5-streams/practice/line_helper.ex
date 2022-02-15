# my attempts lol
defmodule LineHelper do
  defp filtered_lines!(path) do
    # read the file
    File.stream!(path)
    # remove trailing newline character from each line
    |> Stream.map(&String.replace(&1, "\n", ""))
  end

	# take a file path and return a list of numbers, with each number representing the length of the corresponding line from the file
  def lines_lengths!(path) do
    path
    |> filtered_lines!()
    |> Enum.map(&String.length/1) # directly reference the fn w/o specifying the nth argument
  end

  # takes a file path and returns the length of the longest line in a file
  def longest_line_length!(path) do
    path
    |> filtered_lines!()
    |> Stream.map(&String.length/1)
    |> Enum.reduce(0, &get_largest_number/2)
  end

  defp get_largest_number(current, result) when current > result do
    current
  end

  defp get_largest_number(_, result) do
    result
  end

  # return the contents of the longest line in a file
  def longest_line!(path) do
    path
    |> filtered_lines!()
    |> Stream.map(&create_content_length_map/1)
    |> Enum.reduce(%{content: "", length: 0}, &get_longest_line_from_map/2)

    # remote function call (defined in another module). stylistically, avoid List and Map, b/c there are built in kernel fns that can do the same things
    # |> Map.get(:content)
    # use kernel equivalent
    |> get_in([:content])
  end

  defp create_content_length_map(element) do
    %{content: element, length: String.length(element)}
  end

  # if's are nice when a guard doesn't handle the case well
  # otherwise, use pattern matching with functions
  defp get_longest_line_from_map(current, result) when current.length > result.length do
   %{content: current.content, length: current.length}
  end

  defp get_longest_line_from_map(_, result) do
    result
  end

  # returns a list of numbers, with each number representing the word count in a file
  def words_per_line!(path) do
    path
    |> filtered_lines!()
    # map, split line by space?
    |> Enum.map(&(length(String.split(&1)))) # extract this into a separate function
  end
end

# LineHelper.lines_lengths!("./line_helper.ex")
# LineHelper.longest_line_length!("./line_helper.ex")
# LineHelper.longest_line!("./line_helper.ex")
# LineHelper.words_per_line!("./line_helper.ex")
