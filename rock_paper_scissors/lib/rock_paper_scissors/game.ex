defmodule Game do
  # output to console
  def play do
    IO.puts "playing the game"
  end
  # function input
  def play(player1) do
    IO.puts "player 1: #{player1}"
  end
  # tuples
  # hardcode the third arg, in this case elixir knows which function to call
  # based on what has been passed in
  # has to be defined _before_ the more generic one
  def play({:player, name, :rock}, {:player, name2, :scissors}) do
    IO.puts "player 1 wins"
  end
  # :player is an immutable string - used for keys
  def play({:player, name, choice}, {:player, name2, choice2}) do
    IO.puts "name: #{name}:"
    IO.puts "choice: #{choice}:"
    IO.puts "name2: #{name2}:"
    IO.puts "choice2: #{choice2}:"
  end
end
