defmodule Chop do
  def guess(actual, range) do
    min..max = range
    guessed = div(min + max, 2)
    _guess(actual, range, guessed)
  end

  def _guess(actual, _, guessed) when actual == guessed do
    IO.puts "Is it #{guessed}"

    actual
  end

  def _guess(actual, range, guessed) when actual > guessed do
    IO.puts "Is it #{guessed}"

    _..max = range
    upper_range = (guessed + 1)..max
    new_guessed = div(guessed + 1 + max, 2)
    _guess(actual, upper_range, new_guessed)
  end

  def _guess(actual, range, guessed) when actual < guessed do
    IO.puts "Is it #{guessed}"

    min.._ = range
    lower_range = min..(guessed - 1)
    new_guessed = div(min + guessed - 1, 2)
    _guess(actual, lower_range, new_guessed)
  end
end
