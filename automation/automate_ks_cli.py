import subprocess
# This script runs ks_cli.py against multiple targets one at a time to automate it against a list
# Read targets from the file "targets.txt" - add IPs and/or URLs
with open("targets.txt", "r") as file:
    targets = file.readlines()

# Remove whitespace and newlines
targets = [target.strip() for target in targets]

# Run ks_cli.py against each target
for target in targets:
    subprocess.run(["python3", "ks_cli.py", target])
