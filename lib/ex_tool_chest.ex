defmodule ExToolChest do
  @moduledoc """
  Documentation for `ExToolChest`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> ExToolChest.hello()
      :world

  """
  def hello do
    :world
  end

  # ExToolChest.pid_to_string(self())
  def pid_to_string(pid) do
    pid_inspection = "#{inspect pid}" # gives the string "#PID<0.105.0>"
    pid_inspection
      |> String.slice(5, 100)
      |> String.trim(">")
  end

  # ExToolChest.pid_to_list(self())
  def pid_to_list(pid) do
    pid_inspection = "#{inspect pid}" # gives the string "#PID<0.105.0>"
    pid_inspection
      |> String.slice(5, 100)
      |> String.trim(">")
      |> String.split(".")
      |> Enum.map(fn x -> String.to_integer(x) end)
  end

  #ExToolChest.pid_to_tuple(self())
  def pid_to_tuple(pid) do
    pid_inspection = "#{inspect pid}" # gives the string "#PID<0.105.0>"
    pid_inspection
      |> String.slice(5, 100)
      |> String.trim(">")
      |> String.split(".")
      |> Enum.map(fn x -> String.to_integer(x) end)
      |> List.to_tuple
  end
end
