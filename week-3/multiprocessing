import os

def child_process():
    print(f"Child process with PID: {os.getpid()} is running...")
    import time
    time.sleep(2)
    print(f"Child process with PID: {os.getpid()} is done.")

def parent_process():
    pid = os.fork()
    
    if pid > 0:
        print(f"Parent process with PID: {os.getpid()} created child process with PID {pid}")
        child_pid, status = os.wait()
        print(f"Parent process: Child {child_pid} finished with status {status}")
    elif pid == 0:
        child_process()
    else:
        print("Fork failed.")
        
if __name__ == "__main__":
    parent_process()
