version=3.0.1
docker buildx build --push --tag gramcha/ubuntu-node-nginx:$version -f Dockerfile-node18 -o type=image --platform=linux/arm64,linux/amd64 .
