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


# better solution; the pattern matching

defmodule Solution do
  @spec two_sum(nums :: [integer], target :: integer) :: [integer]

  def two_sum(nums, target), do: two_sum(nums, target, %{}, 0)

  def two_sum([], _target, _acc, _index), do: []

  def two_sum([num | rest], target, acc, index) do
    complement = target - num

    case Map.get(acc, complement) do
      nil ->
        acc = Map.put(acc, num, index)
        index = index + 1
        two_sum(rest, target, acc, index)

      complement_index ->
        [complement_index, index]
    end
  end
end
