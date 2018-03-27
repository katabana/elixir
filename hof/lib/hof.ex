defmodule Hof do
  @moduledoc """
  Documentation for Hof.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Hof.hello
      :world

  """

  # Hof.repeat([1,2], fn([x,z]) -> [x + z, 1] end, 1)

  def hello do
    :world
  end

  def repeat(a, f, t) do
	if t > 0 do
	  a = f.(a)
      Hof.repeat(a, f, t - 1)
	else
	  a 
	end
  end
end
