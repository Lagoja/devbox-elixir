defmodule IslandsEngine.Coordinate do
  alias __MODULE__

  @enforce_keys [:row, :col]
  defstruct [:row, :col]

  @board_range 1..10

  @spec new(any, any) ::
          {:error, :invalid_coordinate}
          | {:ok,
             %IslandsEngine.Coordinate{
               col: 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10,
               row: 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10
             }}
  def new(row, col) when row in (@board_range) and col in @(board_range) do
    {:ok, %Coordinate{row: row, col: col}}
  end

  def new(_row, _col), do: {:error, :invalid_coordinate}

end
