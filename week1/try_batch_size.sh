#!/bin/bash
curl -k -X DELETE -u admin:admin https://localhost:9200/bbuy_products
curl -k -X PUT -u admin:admin https://localhost:9200/bbuy_products \
    -H 'Content-Type: application/json' \
    -d @bbuy_products_no_map.json
python index.py -s $BBUY_DATA --batch_size $1