#!/usr/bin/python3
def divisible_by_2(my_list=[]):
    indes = []

    for i in range(len(my_list)):
        if my_list[i] % 2 == 0:
            indes.append(True)
        else:
            indes.append(False)

    return (indes)
