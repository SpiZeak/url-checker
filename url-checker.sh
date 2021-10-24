#!/bin/bash

echo "" > output.txt

while read url; do
	status_code=$(curl -o /dev/null --silent --head --write-out "%{http_code}" $url)
	echo "$url - $status_code" >> output.txt
done < urls.txt
