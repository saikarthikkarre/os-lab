import os

print(f"Before setuid: UID = {os.getuid()}")
try:
    os.setuid(1000)  # Change to UID 1000 (normal user)
    print(f"After setuid: UID = {os.getuid()}")
except PermissionError:
    print("Permission denied: must be root to change UID to another user.")
