defmodule Solution do
  @spec two_sum(nums :: [integer], target :: integer) :: [integer]
    def two_sum(nums, target) do

        # v1
        # pairs = for {x, i} <- Enum.with_index(nums),
        #     {y, j} <- Enum.with_index(nums),
        #     i < j,
        #     x + y == target,
        #     do: [i, j]
        # List.first(pairs)

        # v2
        # nums
        # |> Enum.with_index()
        # |> Enum.reduce_while(%{}, fn {num, idx}, acc -> 
        #     need = target - num
        #     if Map.has_key?(acc, need) do
        #         {:halt, [acc[need], idx]}
        #     else
        #         {:cont, Map.put(acc, num, idx)}
        #     end
        # end)
    end
end
