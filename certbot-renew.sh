docker run -it --rm --name certbot -v $PWD/sslcerts -v $PWD/letsencrypt-artifacts/lib:/var/lib/letsencrypt -v $PWD/websites/albertocabello.com:/data/letsencrypt -v $PWD/letsencrypt-artifacts/logs:/var/log/letsencrypt certbot/certbot renew --webroot -w /data/letsencrypt --quiet && docker kill --signal=HUP reverse_proxy

rm -rf $PWD/letsencrypt-artifacts/
