#!/usr/bin/python3
""" script that takes in a URL, sends a request to the URL and
    displays the body of the response (decoded in utf-8).
    manage urllib.error.HTTPError exceptions and print: Error code:
    followed by the HTTP status code
"""
import sys
import urllib.error as er
import urllib.request as req


if __name__ == "__main__":
    url = sys.argv[1]

    request = req.Request(url)
    try:
        with req.urlopen(request) as response:
            print(response.read().decode("ascii"))
    except er.HTTPError as e:
        print("Error code: {}".format(e.code))
