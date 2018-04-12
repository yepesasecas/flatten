defmodule FlattenTest do
  use ExUnit.Case

  test "flatten" do
    input = %{
    	producto: %{
    		nombre_de_producto: "test",
    		caracteristicas: [
    			%{
    				nombre_de_caracteristica: "feature_test",
    				options: [
    					%{
    						nombre_de_opcion: "option 1"
    					},
    					%{
    						nombre_de_opcion: "option 2"
    					},
    					%{
    						nombre_de_opcion: "option 3"
    					}
    				]
    			},
          %{
    				nombre_de_caracteristica: "feature_test",
    				options: [
    					%{
    						nombre_de_opcion: "option 1"
    					},
    					%{
    						nombre_de_opcion: "option 2"
    					},
    					%{
    						nombre_de_opcion: "option 3"
    					}
    				]
    			}
    		]
    	}
    }

    output = %{
    	producto: %{
    		nombre_de_producto: "test",
    		caracteristicas: [
    			%{
    				nombre_de_caracteristica: "feature_test",
    				options: "option 1, option 2, option 3"
    			},
          %{
    				nombre_de_caracteristica: "feature_test",
    				options: "option 1, option 2, option 3"
    			}
    		]
    	}
    }

    IO.inspect(Flatten.flat(input))
    assert output == Flatten.flat(input)
  end
end
