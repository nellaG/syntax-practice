defmodule Concat do
  def join(a, b, sep \\ " ") do
    a <> sep <> b
  end
end

IO.puts Concat.join("Hello", "world")
IO.puts Concat.join("Hello", "world", "*")


defmodule DefaultTest do
  def dowork(x \\ "Hello") do
    x
  end
end


defmodule Concat do
  def join(a, b \\ nil, sep \\ " ")

  def join(a, b, _sep) when is_nil(b) do
    a
  end

  def join(a, b, sep) do
    a <> sep <> b
  end
end


IO.puts Concat.join("Hello", "world")
IO.puts Concat.join("Hello", "world", "_")
IO.puts Concat.join("Hello")


defmodule Concat do
  def join(a, b) do
    IO.puts "First join"
    a <> b
  end

  def join(a, b, sep \\ " ") do
    IO.puts "Second join"
    a <> sep <> b
  end
end



