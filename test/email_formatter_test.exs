defmodule EmailFormatterTest do
  use ExUnit.Case
  doctest EmailFormatter

  test "greets the world" do
    assert EmailFormatter.hello() == :world
  end
end
