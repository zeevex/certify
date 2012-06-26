FILE=certificate

openssl genrsa -out $FILE.key -passout pass:'' 2048
cat req.txt | openssl req -new -key $FILE.key -out $FILE.csr
openssl x509 -req -days 365 -in $FILE.csr -signkey $FILE.key -out $FILE.crt -extfile ./extensions.txt -extensions zeevex
