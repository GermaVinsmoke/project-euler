defmodule Fibonacci do
  # def series(0), do: "Nothing"
  # def series(1), do: IO.inspect 1
  # def series(2), do: IO.inspect 2
  # def series(n), do: IO.inspect(series(n - 1) + series(n - 2))

  # @limit 100

  # def series(a, b, accumulator \\ []) when a + b < @limit do
  #   IO.inspect a + b
  #   series(b, a + b)
  # end
  # def series(a, b) when a + b > @limit, do: IO.inspect "That's it!"

  @limit 4_000_000

  # def main(a, b) do
  #   series(b, [a + b])
  # end

  # defp series(num, list, accumulator \\ 0)

  # defp series(num, [head | _] = list, accumulator) when head + num < @limit do
  #   if rem(num, 2) == 0, do: series(head, [num + head | list], accumulator + num), else: series(head, [num + head | list], accumulator)
  # end

  # defp series(num, [head | _] = list, accumulator) when head + num > @limit do
  #   if rem(head, 2) == 0, do: {list, accumulator + head}, else: { list, accumulator }
  # end

  def series(a, b, accumulator \\ 0)

  def series(a, b, accumulator) when b < @limit do
    if rem(a, 2) == 0, do: series(b, a + b, accumulator + a), else: series(b, a + b, accumulator)
  end

  def series(a, b, accumulator) when b > @limit do
    if rem(a, 2) == 0, do: accumulator + a, else: accumulator
  end
end

IO.inspect Fibonacci.series(1, 2)
