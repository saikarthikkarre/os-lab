import os
import sys

pid = os.fork()

if pid == 0:
    print("Child process exiting...")
    sys.exit(0)   # normal exit
else:
    child_pid, status = os.wait()
    print(f"Parent: child {child_pid} exited with status {status}")
