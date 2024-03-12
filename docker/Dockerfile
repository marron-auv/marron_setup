FROM ros:humble as build_stage
SHELL ["/bin/bash", "-c"]

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive \
    apt-get install -y \
    python3-vcstool git python3-colcon-common-extensions python3-rosdep && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir -p marron_ws/src
WORKDIR marron_ws/src
ADD workspace.repos .
RUN vcs import . < workspace.repos
WORKDIR ../
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive \
    apt-get install -y \
    rosdep install -iry --from-paths src && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
RUN colcon build --symlink-install
