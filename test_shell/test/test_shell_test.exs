defmodule TestShellTest do
  use ExUnit.Case
  doctest TestShell

  test "greets the world" do
    assert TestShell.hello() == :world
  end
end
