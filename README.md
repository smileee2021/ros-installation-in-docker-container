# ros-installation-in-docker-container

A shell script that package installation about ROS(Robot Operating System)1 and ROS2 in Docker container.

When we setup a new ROS container, it is so clear so that we must install a lot of package, so I write a shell script to Get rid of things that are troublesome.

you will install some package or get some settings through this shell script:
- package
  - curl
  - wget
- shell
  - zsh with zim
- version control
  - git

# Usage
1. new or enter terminal with ROS1 or ROS2 container
```bash
# Container doesn't exist
docker run -it --name=<ContainerName> <ROSImageName>

# Cointainer exists
docker exec -it <ContainerName> bash
```

2. install curl if you don't have it.
```bash
apt update; apt install curl
```

3. execute shell script
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/smileee2021/ros-installation-in-docker-container/main/install-zsh-with-zim.sh)"
```

4. finally
```bash
zimfw install
source /ros_entrypoint.sh
zsh
```

now, you can type `roscore` (ROS1) or `ros2` in terminal and use ROS!
