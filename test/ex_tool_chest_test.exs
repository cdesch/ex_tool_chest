defmodule ExToolChestTest do
  use ExUnit.Case
  doctest ExToolChest

  test "pid_to_string/1" do
    sample_pid = IEx.Helpers.pid(0, 3, 0)
    assert ExToolChest.pid_to_string(sample_pid) == "0.3.0"
  end

  test "pid_to_tuple/1" do
    sample_pid = IEx.Helpers.pid(0, 3, 0)
    assert ExToolChest.pid_to_tuple(sample_pid) == {0, 3 ,0}
  end

  test "pid_to_list/1" do
    sample_pid = IEx.Helpers.pid(0, 3, 0)
    assert ExToolChest.pid_to_list(sample_pid) == [0, 3 ,0]
  end
end
