# official solutions
defmodule EnumStreams do
	def filtered_lines!(path) do
    path
    |> File.stream!()
    |> Stream.map(&String.replace(&1, "\n", ""))
  end

  def lines_length!(path) do
    path
  # |> &filtered_lines!/1 # this won't work, it creates an anon function, rather than calling it.
    |> filtered_lines!()
    |> Enum.map(&String.length/1)
  end

  # returns the length of the longest line in a file
  def longest_line_length!(path) do
    path
    |> filtered_lines!()
    |> Stream.map(&String.length/1)
    |> Enum.max() # what!
  end

  # returns contents of the longest line in a file
  def longest_line!(path) do
    path
    |> filtered_lines!()
    |> Enum.max_by(&String.length/1) # woah
  end

  # returns a list of numbers, with each number represnting the word count in a file
  def words_per_line!(path) do
    path
    |> filtered_lines!()
    |> Enum.map(&word_count/1)
  end

  defp word_count(string) do
    string
    |> String.split()
    |> length()
  end
end

# EnumStreams.lines_length!("./line_helper.ex")
