FROM microsoft/nanoserver
LABEL Description="Windows Server 2016 Nano Server base OS image for Windows containers" Vendor="Compulim" Version="${NODE_VERSION}"
MAINTAINER compulim@hotmail.com

ADD https://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}-win-x64.zip C:\\build\\node-v${NODE_VERSION}-win-x64.zip

RUN powershell -Command Expand-Archive C:\build\node-v${NODE_VERSION}-win-x64.zip C:\; Rename-Item C:\node-v${NODE_VERSION}-win-x64 node
RUN SETX PATH C:\node

ENTRYPOINT C:\node\node.exe
