defmodule MyModule do
  import Geometry

  def my_function do
    Geometry.Rectangle.area()
  end
end

# using an alias
defmodule MyModule do
  import Geometry.Rectangle, as Rectangle

  def my_function do
    Rectangle.area()
  end
end

# skip the 'as' option. syntactic sugar to define an alias of the last part of the module
defmodule MyModule do
  import Geometry.Rectangle

  def my_function do
    Rectangle.area()
  end
end
