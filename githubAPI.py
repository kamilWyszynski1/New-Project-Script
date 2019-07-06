import requests
import sys
import os

TOKEN = os.environ['TOKEN']
print(TOKEN)
data = {
    "name": sys.argv[1]
}

r = requests.post(
    "https://api.github.com/user/repos",
    json=data,
    headers={"Authorization":"Bearer "+TOKEN}
)
print(r)