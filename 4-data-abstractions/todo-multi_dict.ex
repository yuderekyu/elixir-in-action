defmodule MultiDict do
  def new(), do: %{}

  def add(dict, key, value) do
    Map.update(dict, key, value, &[value | &1])
  end

  def get(dict, key) do
    Map.get(dict, key, [])
  end
end

defmodule TodoList do
  def new(), do: MultiDict.new()

  def add_entry(dict, key, value) do
    MultiDict.add(dict, key, value)
  end

  # 4.1.3
  # for a more flexible api, accept a map as an entry.
  # this stops us from having to extend the arguments every time we introduce a new property within the entry
  def add_entry(dict, entry) do
    MultiDict.add(dict, entry.key, entry)
  end

  def get(dict, key) do
    MultiDict.get(dict, key)
  end
end
