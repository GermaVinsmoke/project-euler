defmodule Problem1 do
  def ap_terms(n, first_term), do: floor((n - 1) / first_term)

  def ap_sum(terms, first_term) do
    terms / 2 * (2 * first_term + (terms - 1) * first_term)
  end

  def sum_of(n, first_term) do
    n
    |> ap_terms(first_term)
    |> ap_sum(first_term)
  end

  def total_sum(n) do
    sum_of(n, 3) + sum_of(n, 5) - sum_of(n, 15)
  end
end

IO.puts(Problem1.total_sum(1000))
