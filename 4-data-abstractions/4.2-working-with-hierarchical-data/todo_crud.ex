defmodule TodoList do
  # immediately specify default values within a struct.
  # because of this, we will not have to provide values when creating a new instance.
  defstruct auto_id: 1, entries: %{}

  def new(), do: %TodoList{}

  # update the add_entry to support the new struct.
  def add_entry(todo_list, entry) do
    # set the id for the entry being added
    new_entry = Map.put(entry, :id, todo_list.auto_id)
    # add the new entry to the collection
    new_entries = Map.put(
      todo_list,
      :id,
      new_entry
    )
    # increment the auto_id field
    # use pipe merging to update keys in the map.
    %TodoList{todo_list |
      entries: new_entries,
      auto_id: todo_list.auto_id + 1
    }
  end

  # now we must iterate through the entries and return the ones that fall on a given date
  def entries(todo_list, date) do
    todo_list.entries
    |> Stream.filter(fn {_id, entry} -> entry.date <= date end)
    |> Enum.map(fn {_id, entry} -> entry end)
  end
end
