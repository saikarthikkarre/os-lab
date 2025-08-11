import os

pid = os.fork()

if pid == 0:
    os.execlp("ls", "ls", "-l")
else:
    os.wait()
    print("Parent: child finished.")
