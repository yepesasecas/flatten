defmodule FibTest do
  use ExUnit.Case

  test "Fib.fib(1)" do
    assert "0" == Fib.fib(1)

  end

  test "Fib.fib(2)" do
    assert "0 1" == Fib.fib(2)
  end

  test "Fib with more than 2 positions" do
    assert "0 1 1" == Fib.fib(3)
    assert "0 1 1 2 3 5" == Fib.fib(6)
    assert "0 1 1 2 3 5 8 13 21" == Fib.fib(9)
  end
end
