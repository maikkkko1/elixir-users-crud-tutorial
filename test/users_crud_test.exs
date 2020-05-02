defmodule UsersCrudTest do
  use ExUnit.Case
  doctest UsersCrud

  test "greets the world" do
    assert UsersCrud.hello() == :world
  end
end
