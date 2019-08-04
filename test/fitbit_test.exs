defmodule FitbitTest do
  use ExUnit.Case
  doctest Fitbit

  test "greets the world" do
    assert Fitbit.hello() == :world
  end
end
