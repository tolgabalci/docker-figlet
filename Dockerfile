FROM mcr.microsoft.com/powershell

RUN apt-get update
RUN apt-get install figlet
RUN apt-get install tree

COPY . /usr/sbin

ENTRYPOINT [ "pwsh", "-NoExit", "/usr/sbin/welcome.ps1" ]
