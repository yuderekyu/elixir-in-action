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

  def add(dict, key, value) do
    MultiDict.add(dict, key, value)
  end

  def get(dict, key) do
    MultiDict.get(dict, key)
  end
end
