#!/bin/bash

echo "###############################"
echo "#### Testing Elasticsearch ####"
echo "###############################"

curl --retry 10 --retry-delay 5 -v http://127.0.0.1:9200

curl -XPUT 'http://127.0.0.1:9200/blog/user/khanh' -d '{ "name" : "Khanh" }'
curl -XPUT 'http://127.0.0.1:9200/blog/post/1' -d '{"user": "khanh", "date": "2018-03-21","body": "Search is hard","title": "Test"}'
curl -XPUT 'http://127.0.0.1:9200/blog/post/2' -d '{"user": "khanh", "date": "2018-03-21","body": "Search should be easy","title": " :v :v :v "}'

curl -XGET 'http://127.0.0.1:9200/blog/user/khanh?pretty=true'
curl -XGET 'http://127.0.0.1:9200/blog/post/1?pretty=true'
curl -XGET 'http://127.0.0.1:9200/blog/post/2?pretty=true'

curl 'http://127.0.0.1:9200/blog/post/_search?q=user:khanh&pretty=true'

curl 'http://127.0.0.1:9200/blog/post/_search?q=-title:search&pretty=true'