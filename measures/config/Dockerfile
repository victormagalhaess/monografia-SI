# Use a base image with Go, Zsh, and any other dependencies you need
FROM golang:latest

# Set the work directory to /app
WORKDIR /app

# Uses "robbyrussell" theme (original Oh My Zsh theme), with no plugins
RUN sh -c "$(wget -O- https://github.com/deluan/zsh-in-docker/releases/download/v1.1.5/zsh-in-docker.sh)" -- \
    -t robbyrussell
