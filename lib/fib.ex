defmodule Fib do

  def fib(pos) do
    {val, str} = fib_do(pos)
    str
  end

  defp fib_do(1), do: {0, "0"}
  defp fib_do(2), do: {1, "0 1"}
  
  defp fib_do(pos) do
    {val_1, str_1} = fib_do(pos - 1)
    {val_2, str_2} = fib_do(pos - 2)
    val = val_2 + val_1
    {val, "#{str_1} #{val}"}
  end
end
