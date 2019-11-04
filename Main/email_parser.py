import re
import sys

# Initiate main function
if __name__ == "__main__":
    try:
        for line in sys.stdin:
            match = re.findall(r'[\w\.-]+@[\w\.-]+', line)
            print(match)
    except:
        print(sys.exc_info())