docker run -it --rm -v $PWD/sslcerts:/etc/letsencrypt -v $PWD/letsencrypt-artifacts/lib:/var/lib/letsencrypt -v $PWD/websites/albertocabello.com:/data/letsencrypt -v $PWD/letsencrypt-artifacts/logs:/var/log/letsencrypt certbot/certbot certonly --webroot --email albert.a.cabello@gmail.com --agree-tos  --no-eff-email --webroot-path=/data/letsencrypt --staging -d albertocabello.com -d www.albertocabello.com

rm -rf $PWD/letsencrypt-artifacts
