FROM mcr.microsoft.com/devcontainers/base:ubuntu-22.04

RUN apt-get update && apt-get install -y \
    curl \
    wget \
    git \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Switch to 'vscode' user for Julia installation
USER vscode

# Set JULIAUP_HOME for 'vscode' user
ENV JULIAUP_HOME="/home/vscode/.juliaup"
ENV PATH="${JULIAUP_HOME}/bin:${PATH}"

# Install juliaup as 'vscode'
RUN curl -fsSL https://install.julialang.org | sh -s -- --yes

# Install specific Julia version and set as default
RUN juliaup add 1.10 && \
    juliaup default 1.10

# Verify installation
RUN julia --version

