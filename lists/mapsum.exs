defmodule MyList do
  def mapsum(list, func) do
    _mapsum(list, 0, func)
  end

  defp _mapsum([], total, func) do
    total
  end

  defp _mapsum([head | tail], total, func) do
    _mapsum(tail, func.(head) + total, func)
  end
end
