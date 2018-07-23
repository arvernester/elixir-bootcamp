defmodule Cards do

  def create_deck do
    numbers = ["Ace", "Two", "Three", "Four", "Five", "Six"]
    suits = ["Spades", "Clubs", "Hearts", "Diamonds"]

    for suit <- suits, number <- numbers do
      "#{number} of #{suit}"
    end
  end

  def shuffle(deck) do
    Enum.shuffle deck
  end

  def contains?(deck, card \\ nil) do
    Enum.member? deck, card
  end

end