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
end

# EnumStreams.lines_length!("./line_helper.ex")
