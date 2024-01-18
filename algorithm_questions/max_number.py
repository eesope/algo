"""
Find max number; print nothing if there is no number.
"""


def find_max(nums):
    index = 0
    only_nums = []

    for item in nums:
        if str(item).isnumeric():
            only_nums.insert(index, item)
            index += 1

    if len(only_nums) > 0:
        max_number = max(nums)
        print(max_number)
    else:
        print("No number to read.")


def main():
    nums = [1, 7, 3, 5, 6]
    empty = []

    find_max(empty)


if __name__ == "__main__":
    main()
