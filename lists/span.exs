defmodule MyList do
  def span(from, to) when from == to, do: [from]

  def span(from, to) when from < to do
    _span(from, to, [])
  end

  def span(from, to) when from > to do
    raise "from must be less than to"
  end

  defp _span(from, to, list) when from == to do
    Enum.reverse [from | list]
  end

  defp _span(from, to, list) do
    _span(from + 1, to, [from | list])
  end
end
