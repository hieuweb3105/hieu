<?php

/**
 * Hàm này dùng để lấy danh sách dự án
 */
function project_get_list() {
    return pdo_query(
        'SELECT * FROM project WHERE delete_at IS NULL'
    );
}