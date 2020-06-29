import task


def test_number_on_3():
    assert task.countSquares(3) == 9


def test_number_on_6():
    assert task.countSquares(6) == 2


def test_number_on_9():
    assert task.countSquares(9) == 6
