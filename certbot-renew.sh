# This renews a certificate
docker run --rm -it --name certbot -v "/root/albertocabello.com/sslcerts:/etc/letsencrypt" -v "/root/albertocabello.com/letsencrypt-artifacts:/var/lib/letsencrypt" -v  "/root/albertocabello.com/websites:/data/letsencrypt" -v "/root/albertocabello.com/letsencrypt-artifacts/logs:/var/log/letsencrypt" certbot/certbot renew --dry-run

# This lists the certificates generated
docker run --rm -it --name certbot -v "/root/albertocabello.com/sslcerts:/etc/letsencrypt" -v "/root/albertocabello.com/letsencrypt-artifacts:/var/lib/letsencrypt" -v  "/root/albertocabello.com/websites:/data/letsencrypt" -v "/root/albertocabello.com/letsencrypt-artifacts/logs:/var/log/letsencrypt" certbot/certbot certificates
