defmodule ExToolChestTest do
  use ExUnit.Case
  doctest ExToolChest

  test "greets the world" do
    assert ExToolChest.hello() == :world
  end
end
