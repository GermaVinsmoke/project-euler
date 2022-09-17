defmodule LargestPrimeFactor do
  def calc(n, c) when n > 1 do
    # Using if else
    # if rem(n, c) == 0, do: calc(div(n, c), c), else: calc(n, c + 1)

    # Using case
    case rem(n, c) do
      0 -> calc(div(n, c), c)
      _ -> calc(n, c + 1)
    end
  end

  def calc(_, c), do: c
end

IO.inspect LargestPrimeFactor.calc(600851475143, 2)
