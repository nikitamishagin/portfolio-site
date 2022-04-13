docker build -t mysite .
docker run --detach \
--name mysite \
--env "VIRTUAL_HOST=labstand.myfamcloud.ml" \
--env "VIRTUAL_PORT=80" \
--env "LETSENCRYPT_HOST=labstand.myfamcloud.ml" \
--env "LETSENCRYPT_EMAIL=nikitamishagin@gmail.com" \
--network=homecloud_proxy-tier \
mysite:latest
