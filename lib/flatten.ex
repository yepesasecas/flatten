defmodule Flatten do
  def flat(input) do
    carac = caracteristicas_do(input[:producto][:caracteristicas])
    prod = Map.put(input[:producto], :caracteristicas, carac)
    Map.put(input, :producto, prod)
  end

  defp caracteristicas_do([ele | []]) do
    [Map.put(ele, :options, flat_do(ele[:options]))]
  end
  defp caracteristicas_do([ele | carac]) do
    caracteristicas_do(carac) ++ [Map.put(ele, :options, flat_do(ele[:options]))]
  end

  defp flat_do([ele | []]) do
    ele[:nombre_de_opcion]
  end
  defp flat_do([ele | options]) do
    str = flat_do(options)
    "#{ele[:nombre_de_opcion]}, #{str}"
  end
end
