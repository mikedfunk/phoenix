# Elixir coding dojo 10-19-2017

Used by toyota, grindr, hallmark, and others
Handles a ton of simultaneous connections per server (200,000 simultaneous)
Written by a core contributor to ruby

```sh
mix phx.new rock_paper_scissors --no-brunch --no-ecto
cd rock_paper_scissors
mix deps.get
mix phx.server
iex -S mix phx.server
```

iex is a repl

like C# you can define more specific versions of function signatures which will
be hit first. Interestingly you can hardcode keys in params and if the keys
match they will use that method signature first:

```elixir
# more specific version - if the last param matches the symbol it uses this
def play({:player, name, :rock}, {:player, name2, :scissors}) do
  IO.puts "player 1 wins"
end
# more general version
def play({:player, name, choice}, {:player, name2, choice2}) do
  IO.puts "name: #{name}:"
  IO.puts "choice: #{choice}:"
  IO.puts "name2: #{name2}:"
  IO.puts "choice2: #{choice2}:"
end
```

`|>` is a fluent interface language feature. Pipe the output from the previous
statement to the next.

```elixir
players
|> Enum.each
|> show_player
|> print stats
```

There are also special classes called guards which become part of the function
signature to limit input (see docs)

It's a functional language so all values are immutable. Every time you're
mutating a hash, you're creating a new version of it:

```elixir
%{c: 2} |> Map.merge(%{b:1})
> %{b: 1, c: 2}
```
