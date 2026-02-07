<?php

# [DATA
$data = [
    'your_ip' => get_ip(),
];


# [RENDER]
view('public','test','Test Area',$data);