#!/usr/bin/python3
""" script that takes your GitHub credentials (username and password)
    and uses the GitHub API to display your id
    use Basic Authentication with a PAT as password for access
    usage:  ./10-my_github.py <GitHub username> <GitHub PAT>
"""
import sys
import requests
from requests.auth import HTTPBasicAuth

if __name__ == "__main__":
    auth = HTTPBasicAuth(sys.argv[1], sys.argv[2])
    req = requests.get("https://api.github.com/user", auth=auth)
    print(req.json().get("id"))
