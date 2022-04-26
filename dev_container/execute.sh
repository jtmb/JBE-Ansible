# Cleans up old Image
docker image rm dev-env:2.0

# Removes old Container
docker rm -f dev-env-2

# Builds Image
docker build -t dev-env:2.0 .

# Runs image and opens session as host
docker run --name dev-env-ubuntu -p 3001:3001 -v //c/Users/james/Documents/dev-env:/root/dev-env -i dev-env:2.0


