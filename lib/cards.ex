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

  def deal(deck, hand_size \\ 2) do
    Enum.split deck, hand_size
  end

  def save(deck, filename) do
    binary = :erlang.term_to_binary(deck)
    File.write(filename, binary)
  end

  def load(filename) do
    {status, binary} = File.read(filename)

    case status do
      :ok -> :erlang.binary_to_term(binary)
      :error -> "File is not exists."
    end
  end
end