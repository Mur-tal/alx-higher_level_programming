#!/usr/bin/python3
""" Define a class """


class LockedClass:
    """ This class prevent dynamic new instance attributes to be created """
    __slots__ = ["first_name"]
