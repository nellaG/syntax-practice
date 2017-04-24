defmodule Math do
  def sum_list([head | tail], accumulator) do
    IO.puts head
    sum_list(tail, head + accumulator)
  end

  def sum_list([], accumulator) do
    accumulator
  end
end

IO.puts Math.sum_list([1, 2, 3], 0)
