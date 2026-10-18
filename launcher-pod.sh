sudo apt update
sudo apt install podman -y

podman run -d \
  --name launcher \
  --replace \
  -p 8080:80 \
  -v ./:/usr/share/nginx/html:ro \
  --restart always \
  docker.io/library/nginx:alpine
