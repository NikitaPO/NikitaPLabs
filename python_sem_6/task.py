def countSquares(n):
    i = 1
    num = 1

    while n > 0:
        num = i * i
        i += 1
        n -= countDigits(num)

    return getNumberByPosition(num, n)


def countDigits(n):
    count = 0
    while (n % 10 >= 1):
        n = n / 10
        count += 1
    return count


def getNumberByPosition(num, n):
    if (n == 0):
        return num % 10
    n = 10 ** (n * -1)
    return int(num / n) % 10


print("result = ", countSquares(9))
