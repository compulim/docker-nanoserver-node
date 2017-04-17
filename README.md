# Nano Server image with Node.js

This is a Windows Container image with Windows Server 2016 Nano Server base OS image and Node.js.

You can find the [Dockerfile](https://github.com/compulim/docker-nanoserver-node/blob/master/Dockerfile) on GitHub.

This [article](https://docs.microsoft.com/en-us/virtualization/windowscontainers/quick-start/quick-start-windows-10) is a quick tutorial for running Docker on Windows 10.

# How to use?

## Pull this image from Docker Hub

> Before pulling, make sure your Docker is running in [Windows Container mode](https://docs.docker.com/docker-for-windows/#switch-between-windows-and-linux-containers).

Run `docker pull compulim/nanoserver-node` to pull the image to your local repository.

## Run the Docker image

Run `docker run --rm -it compulim/nanoserver-node` to run Node.js in CLI mode.

Node.js and npm is located at `C:\node`. PATH environment variable is set for your convenience.

# Contributions

Like us, please [star](https://github.com/compulim/docker-nanoserver/stargazers) us.

If you found an issue or suggest a version bump, please [file an issue](https://github.com/compulim/docker-nanoserver/issues) to us.
