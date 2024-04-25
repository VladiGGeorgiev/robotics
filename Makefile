build:
	docker build -t ros:humble .

# --device=/dev/input/js0 - Adding a device file to docker container
run:
	docker run -it --user ros --network=host --ipc=host --env=DISPLAY -v $(PWD)/src:/src ros:humble 

# Source: source install/setup.bash ?
# Build: colcon build --symlink-install
# Run ROS2: ros2 launch my_bot rsp.launch.py
# Run RViz: rviz2 -d src/my_bot/config/view_bot.rviz
# Joint GUI: ros2 run joint_state_publisher_gui joint_state_publisher_gui