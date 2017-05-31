FROM microsoft/nanoserver
LABEL Description="Windows Server 2016 Nano Server base OS image for Windows containers" Vendor="Compulim" Version="8.0.0"
MAINTAINER compulim@hotmail.com

ADD https://nodejs.org/dist/v8.0.0/node-v8.0.0-win-x64.zip C:\\build\\node-v8.0.0-win-x64.zip

RUN powershell -Command Expand-Archive C:\build\node-v8.0.0-win-x64.zip C:\; Rename-Item C:\node-v8.0.0-win-x64 node
RUN SETX PATH C:\node

ENTRYPOINT C:\node\node.exe
