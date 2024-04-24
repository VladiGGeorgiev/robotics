build:
	docker build -t ros:humble .

# --device=/dev/input/js0 - Adding a device file to docker container
run:
	docker run -it --user ros --network=host --ipc=host --env=DISPLAY -v $(PWD)/src:/src ros:humble 