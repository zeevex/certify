1.  Change the site's wildcard name in req.txt.
2.  Change the alternate names in extensions.txt.
3.  sh ./create.sh
4.  The cert will be certificate.crt, key will be certificate.key.
    The .csr file may be ignored.

Use `openssl x509 -text -in certificate.crt` to examine the generated certificate.
