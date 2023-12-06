<?php
    $curl = curl_init();
    curl_setopt_array($curl, array(
    CURLOPT_URL => 'https://a.khalti.com/api/v2/epayment/initiate/',
    CURLOPT_RETURNTRANSFER => true,
    CURLOPT_ENCODING => '',
    CURLOPT_MAXREDIRS => 10,
    CURLOPT_TIMEOUT => 0,
    CURLOPT_FOLLOWLOCATION => true,
    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
    CURLOPT_CUSTOMREQUEST => 'POST',
    CURLOPT_POSTFIELDS =>'{
    "return_url": "http://localhost/ecommerce/payment.php",
    "website_url": "http://localhost/ecommerce/index.php",
    "amount": "1000",
    "purchase_order_id": "Order01",
        "purchase_order_name": "test",

    "customer_info": {
        "name": "Test Nepali",
        "email": "test@khalti.com",
        "phone": "9800000001"
    }
    }

    ',
    CURLOPT_HTTPHEADER => array(
        'Authorization: key 6a825e068c8843aea64a01c1bdcc09dc',
        'Content-Type: application/json',
    ),
    ));

    $response = curl_exec($curl);
    // $response_obj = json_encode($response);
    $res = json_decode($response, true);

    curl_close($curl);
    // echo $res;
    echo $res['payment_url'];
    echo $response;
    echo gettype($response);

    header('Location: '.$res['payment_url']);

