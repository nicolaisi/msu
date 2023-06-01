import sys
import subprocess
import os
from shutil import copyfile

print (sys.version)
copyfile("./background.png", "./bora/static/background.png")
subprocess.call(["python", "./bora/core.py"])
