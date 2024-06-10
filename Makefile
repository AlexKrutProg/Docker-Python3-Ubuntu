default: image

all: image py_3.12.3

image:
	docker build \
	-f Dockerfile \
	--cache-from thealexkrut/docker-python3-ubuntu:latest \
	--build-arg PYTHON_VERSION_TAG=3.12.3 \
	--build-arg LINK_PYTHON_TO_PYTHON3=1 \
	-t thealexkrut/docker-python3-ubuntu:latest \
	-t thealexkrut/docker-python3-ubuntu:3.12.3 \
	.

py_3.12.3:
	docker build \
	-f Dockerfile \
	--cache-from thealexkrut/docker-python3-ubuntu:latest \
	--build-arg PYTHON_VERSION_TAG=3.12.3 \
	--build-arg LINK_PYTHON_TO_PYTHON3=1 \
	-t thealexkrut/docker-python3-ubuntu:latest \
	-t thealexkrut/docker-python3-ubuntu:3.12.3 \
	.
