These scripts download and install tools as well as payloads I commonly use on pentests and CTFs.

IMPORTANT: You might get an error stating that /bin/bash isn't recognized. You need to run the following commands first to change from dos to unix -
1. dos2unix 1st_download_tools_payloads.sh
2. dos2unix 2nd_update_install.sh

Now run the scripts. If you don't run the above, it might cause issues with folders being named weird.

Run in sequence:
1. 1st_download_tools_payloads.sh << downloads payloads and tools
2. 2nd_update_install.sh << updates and upgrades kali then installs several tools from kali repo - also installs rustscan
3. chmod +x 1st_download_tools_payloads.sh
4. ./1st_download_tools_payloads.sh
5. chmod +x 2nd_update_install.sh
6. sudo ./2nd_update_install.sh

After that you are good to go!
