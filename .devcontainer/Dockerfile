# Use the official Julia base image. Replace '1.8' with your desired Julia version.
FROM julia:1.8

# Prevent interactive prompts during installation
ENV DEBIAN_FRONTEND=noninteractive

# Set the working directory
WORKDIR /workspace

# Install system dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    wget \
    && rm -rf /var/lib/apt/lists/*

# Install Julia packages globally
RUN julia --startup-file=no -e 'using Pkg; \
    Pkg.add(["PkgTemplates", "JuliaFormatter"]); \
    Pkg.precompile()'

# (Optional) Install any additional system dependencies here
# Example:
# RUN apt-get update && apt-get install -y vim

# Set the default command to start a shell
CMD ["julia"]

