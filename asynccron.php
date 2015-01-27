<?php

if (isset($argv[1]) && $argv[1] == 'job') {
    echo 'foo' . mt_rand(0, 9999);
    exit;
}

if (isset($argv[1]) && $argv[1] == 'run' && isset($argv[2])) {
    sleep(mt_rand(30, 500));
    exit;
}
