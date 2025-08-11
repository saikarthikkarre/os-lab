import os

print(f"Current nice value: {os.nice(0)}") 
os.nice(5) 
print(f"New nice value: {os.nice(0)}")
