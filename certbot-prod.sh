# This generates a certificate BUT YOU MUST MOVE THE BITWARDEN SITE TO BECOME THE DEFAULT SSL-SITE
# rename bitwarden.albertocabello.com.conf to bitwarden.albertocabello.com and ssl-site to ssl-site.conf
# restart docker container and run this script
# undo the rename and should have the new scripts
docker run --rm -it --name certbot -v "/root/albertocabello.com/sslcerts:/etc/letsencrypt" -v "/root/albertocabello.com/letsencrypt-artifacts:/var/lib/letsencrypt" -v  "/root/albertocabello.com/websites:/data/letsencrypt" -v "/root/albertocabello.com/letsencrypt-artifacts/logs:/var/log/letsencrypt" certbot/certbot certonly --webroot -w /data/letsencrypt/ssl-setup -d bitwarden.albertocabello.com -d www.bitwarden.albertocabello.com -w /data/letsencrypt/albertocabello.com -d albertocabello.com -d www.albertocabello.com


# This lists the certificates generated
docker run --rm -it --name certbot -v "/root/albertocabello.com/sslcerts:/etc/letsencrypt" -v "/root/albertocabello.com/letsencrypt-artifacts:/var/lib/letsencrypt" -v  "/root/albertocabello.com/websites:/data/letsencrypt" -v "/root/albertocabello.com/letsencrypt-artifacts/logs:/var/log/letsencrypt" certbot/certbot certificates
