<?php

# [MODEL]
model('public','project');

# [HANDLE]

# [DATA]
$data = [
    'list_project' => project_get_list(),
];

# [RENDER]
view('public','project','Dự án',$data);