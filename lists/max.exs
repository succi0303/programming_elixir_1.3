defmodule MyList do
  def max(list) do
    _max(list, 0)
  end

  defp _max([], max) do
    max
  end

  defp _max([head | tail], max) do
    _max(tail, Enum.max([head, max]))
  end
end
