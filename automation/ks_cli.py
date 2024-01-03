import subprocess
from concurrent.futures import ThreadPoolExecutor, as_completed
import datetime
import os
import sys
import threading

print("Throwing the kitchen sink...")

if len(sys.argv) < 2:
    print("Usage: python script.py <target_IP_or_domain>")
    sys.exit(1)

target = sys.argv[1]
print(f"Target: {target}")

commands = [
    ["nuclei", "-u", target],
    ["nmap", "-sVC", target, "-Pn"],
    ["sslscan", target],
    ["rustscan", "-a", target, "--ulimit", "5000", "--range", "1-65535", "--", "-sVC", "-Pn"],
    ["nikto", "-h", target, "-C", "all"],
    ["enum4linux", target]
]

print("Initiating scans... Running commands... Please wait.")
print("You can press 'Enter' to check pending commands or ctrl + c to exit.")

now = datetime.datetime.now()
folder_name = f"kitchen_sink_{now.strftime('%m_%d_%Y')}_{now.strftime('%H_%M_%S')}"
os.makedirs(folder_name)

completed_commands = []

def run_command(command):
    command_name = command[0]
    command_args = command[1:]
    output_file = f"{folder_name}/{target}_{command_name}_{now.strftime('%m_%d_%Y_%H_%M_%S')}.txt"

    print(f"[+] {command_name} running...")
    with open(output_file, "w") as file:
        result = subprocess.run(command, stdout=file, stderr=subprocess.STDOUT)
        if result.returncode == 0:
            print(f"[+] {command_name} - SUCCESSFUL")
            return command_name
        else:
            print(f"[x] {command_name} - ERROR FAILED: CHECK SCRIPT")
            return None

def check_pending():
    global completed_commands
    while True:
        input_ = input()
        if input_ == "":
            print("Checking progress...")
            pending_commands = [command[0] for command in commands if command[0] not in completed_commands]
            for command_name in pending_commands:
                if command_name not in [None]:
                    print(f"[+] {command_name} pending completion...")

completed_commands = []

with ThreadPoolExecutor(max_workers=len(commands)) as executor:
    try:
        executor_threads = [executor.submit(run_command, command) for command in commands]
        threading.Thread(target=check_pending).start()

        for future in as_completed(executor_threads):
            command_name = future.result()
            if command_name:
                completed_commands.append(command_name)
    except KeyboardInterrupt:
        print("\nStopping. Check folder.")

print("Tasks completed.")
