defmodule Cards do

  def create_deck do
    ["Ace", "One", "Two", "Three", "Five", "Six"]
  end

  def shuffle(deck) do
    Enum.shuffle deck
  end

  def contains?(deck, card \\ nil) do
    Enum.member? deck, card
  end

end