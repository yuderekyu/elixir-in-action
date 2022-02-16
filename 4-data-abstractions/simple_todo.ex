defmodule TodoList do
  def new(), do: %{}

  def add_entry(todo_list, date, title) do
    Map.update(
      todo_list,
      date,
      [title], # initial value
      fn titles -> [title | titles] end # push a new entry to the top of the list
    )
  end

  def entries(todo_list, date) do
    Map.get(todo_list, date, []) # third argument is default value that's returned if a given key isn't present in the ma
  end
end
