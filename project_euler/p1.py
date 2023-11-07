"""
Multiples of 3 or 5

If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6, 9.
The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 100.
"""


def multiples():
    multiples_of_3_or_5 = set()
    for multiple in range(1, 1000):
        if multiple % 3 == 0:
            multiples_of_3_or_5.add(multiple)
        elif multiple % 5 == 0:
            multiples_of_3_or_5.add(multiple)

    sum_value = 0
    for number in multiples_of_3_or_5:
        sum_value = number + sum_value
    return sum_value


def main():
    print(multiples())


if __name__ == "__main__":
    main()
