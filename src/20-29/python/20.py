import json
from json.decoder import WHITESPACE


f = open('jawiki-country.json', 'r')
temp = {i : json.loads(line) for i, line in enumerate(f)}
print(temp)
