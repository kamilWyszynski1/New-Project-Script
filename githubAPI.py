import requests
import sys

TOKEN = "f3e0454e1696cc4f4f75a5498a09b222a5917d9d"

data = {
    "name": sys.argv[1]
}

r = requests.post(
    "https://api.github.com/user/repos",
    json=data,
    headers={"Authorization":"Bearer "+TOKEN}
)