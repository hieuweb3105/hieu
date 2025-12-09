<?php

function spam($index)
{
    $apiUrl = "https://binhdanhocvuso.quangngai.gov.vn/internalapi/register";

    $postData = [
        //'CommuneID' => 51031, //lân phong
        'CommuneID' => 51005, //đức phổ
        'DateOfBirth' => '2000-12-12T00:00:00.000Z',
        'FullName' => 'TÉT TƠ',
        'IsPublicEmployee' => false,
        'Password' => 'Demo@123',
        'ProvinceID' => 51,
        'UserName' => 'spam' . create_token(20),
    ];

    // Chuyển mảng dữ liệu sang định dạng JSON
    $payload = json_encode($postData);

    // 1. Khởi tạo cURL
    $ch = curl_init($apiUrl);

    // 2. Thiết lập các tùy chọn cho cUR,L
// Thiết lập phương thức là POST
    curl_setopt($ch, CURLOPT_CUSTOMREQUEST, 'POST');
    // Thiết lập dữ liệu JSON vào Body
    curl_setopt($ch, CURLOPT_POSTFIELDS, $payload);
    // Yêu cầu cURL trả về kết quả dưới dạng chuỗi thay vì in trực tiếp
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

    // Thiết lập Header để xác định nội dung gửi đi là JSON
    curl_setopt($ch, CURLOPT_HTTPHEADER, [
        'Accept: application/json, text/plain, */*',
        'Content-Type: application/json',
        'Origin: https://binhdanhocvuso.quangngai.gov.vn',
        'Referer: https://binhdanhocvuso.quangngai.gov.vn/register',
        'User-Agent: Mozilla/5.0',
        'X-App-Source: BinhDanHocVuSo',
        'Content-Length: ' . strlen($payload)
    ]);

    // 3. Thực thi yêu cầu và nhận kết quả
    $response = curl_exec($ch);

    // 4. Kiểm tra lỗi và đóng cURL
    if (curl_errno($ch)) {
        echo '['.$index.'] Lỗi cURL khi gửi yêu cầu: ' . curl_error($ch).'<br>';
    } else {
        echo '['.$index.'] '.$response  .'<br>';
    }

    curl_close($ch);
}

for ($i=1; $i <= 5; $i++) { 
    spam($i);
}

?>