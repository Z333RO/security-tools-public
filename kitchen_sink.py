# Throw the kitchen sink at a target. Specify commands or scans to run at a target all at once.
# Scan results are stored in a folder as txt files where you run this script.

import subprocess
from concurrent.futures import ThreadPoolExecutor
import datetime
import os
import sys

print("Throwing the kitchen sink...")
target = input("Enter an IP: ")
print("Initiating scans... Running commands... Please wait.")
print("You can ctrl + c to exit and stop all scans.")

# Write your commands here - target will be the IP you specify
commands = [
    ["nuclei", "-u", target],
    ["nmap", "-sVC", target, "-Pn"],
    ["sslscan", target],
    ["rustscan", "-a", target, "--ulimit", "5000", "--range", "1-65535", "--", "-sVC", "-Pn"],
    ["nikto", "-h", target, "-C", "all"],
    ["enum4linux", target]
]

# Create a folder for scan results
now = datetime.datetime.now()
folder_name = f"master_scan_{now.strftime('%m_%d_%Y')}_{now.strftime('%H_%M_%S')}"
os.makedirs(folder_name)

def run_command(command):
    command_name = command[0]
    command_args = command[1:]
    output_file = f"{folder_name}/{target}_{command_name}_{now.strftime('%m_%d_%Y_%H_%M_%S')}.txt"

    with open(output_file, "w") as file:
        result = subprocess.run(command, stdout=file, stderr=subprocess.STDOUT)
        if result.returncode == 0:
            print(f"[+] {command_name} - SUCCESSFUL")
        else:
            print(f"[x] {command_name} - ERROR FAILED: CHECK SCRIPT")

# ThreadPoolExecutor with max_workers set to the number of commands
with ThreadPoolExecutor(max_workers=len(commands)) as executor:
    try:
        executor.map(run_command, commands)
    except KeyboardInterrupt:
        print("\nStopping. Check folder.")

print("Tasks completed.")
