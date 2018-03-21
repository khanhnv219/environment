#!/bin/bash

echo "###########################"
echo "#### Testing with Curl ####"
echo "###########################"

echo ""
echo "======================"
echo "==== Testing php7 ===="
echo "======================"

echo ""
curl --retry 10 --retry-delay 5 http://test.dev/connect.php
echo ""

echo ""
echo "=========================="
echo "==== Testing RabbitMQ ===="
echo "=========================="

echo ""
curl --retry 5 --retry-delay 5 -s -u guest:guest http://127.0.0.1:15672/api/aliveness-test/%2F
echo ""	