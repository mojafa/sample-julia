# FROM mcr.microsoft.com/devcontainers/base:ubuntu-22.04

# # Install system dependencies
# RUN apt-get update && apt-get install -y \
#     curl \
#     wget \
#     git \
#     build-essential \
#     && rm -rf /var/lib/apt/lists/*

# # Switch to 'vscode' user for Julia installation
# USER vscode

# # Set JULIAUP_HOME for 'vscode' user
# ENV JULIAUP_HOME="/home/vscode/.juliaup"
# ENV PATH="${JULIAUP_HOME}/bin:${PATH}"

# # Install juliaup as 'vscode'
# RUN curl -fsSL https://install.julialang.org | sh -s -- --yes

# # Install specific Julia version and set as default
# RUN juliaup add 1.10 && \
#     juliaup default 1.10

# # Install Julia packages globally
# RUN julia --startup-file=no -e 'using Pkg; \
#     Pkg.add(["PkgTemplates", "JuliaFormatter"]); \
#     Pkg.precompile()' && \
#     julia --version

<!-- 
// {
//     "name": "Julia Development",
//     "build": {
//         "dockerfile": "Dockerfile",
//         "context": ".."
//     },
//     "customizations": {
//         "vscode": {
//             "extensions": [
//                 "julialang.language-julia"
//             ],
//             "settings": {
//                 "[julia]": {
//                     "editor.defaultFormatter": "julialang.language-julia",
//                     "editor.formatOnSave": true
//                 },
//                 "julia.execution.resultType": "inline"
//             }
//         }
//     }
// } -->