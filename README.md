# docker-nghttp2

docker run -d --name nghttp2 \
           --privileged \
           -v /root/certs/server-key.pem:/key:ro \
           -v /root/certs/server-cert.pem:/cer:ro \
           -p 110:3000 \
           --link squid:squid \
           krast0/nghttp2
