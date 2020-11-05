total = 10565

defmodule Mutant do
  def mutate(value) do
    value = 10
    IO.puts("inner #{value}")
    value
  end
end

Mutant.mutate(total)
IO.puts("outter 1: #{total}")

total = Mutant.mutate(total)
IO.puts("outter 2: #{total}")
