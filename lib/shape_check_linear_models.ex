defmodule ShapeCheckLinearModels do
  alias Nx
  require Nx

  def diabetes_data do
    x =
      File.read!("./diabetes_data_raw.csv")
      |> String.split("\n")
      |> Enum.map(&String.split(&1, " "))
      |> Enum.map(&list_of_string_to_floats(&1))
      |> Nx.tensor()

    y =
      File.read!("./diabetes_target.csv")
      |> String.split("\n")
      |> Enum.map(&String.split(&1, " "))
      |> Enum.map(&list_of_string_to_floats(&1))
      |> Nx.tensor()

    {x, y}
  end
  
  defp list_of_string_to_floats(list) do
    list
    |> Enum.map(&Float.parse/1)
    |> Enum.map(&keep_floats/1)
  end

  defp keep_floats(parsed_float) do
    {float, _} = parsed_float
    float
  end
end
