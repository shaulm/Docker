import json
import sys

with open("Config.json", 'r+') as f:
    data = json.load(f)
    data['install']['version'] = "1.0.0.{0}".format(sys.argv[1]) # <--- add `id` value.
    f.seek(0)        # <--- should reset file position to the beginning.
    json.dump(data, f, indent=4)