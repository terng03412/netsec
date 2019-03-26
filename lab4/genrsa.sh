
openssl genrsa -aes256 -out key.pem 1024
cat key.pem 
openssl rsa -in key.pem | openssl asn1parse
openssl rsa -in key.pem -pubout -out public.pem
openssl rsa -pubin -in public.pem -text
openssl rsa -in key.pem -text
openssl rsa -pubin -in public.pem -modulus -noout
openssl rsa -in key.pem -modulus -noout
