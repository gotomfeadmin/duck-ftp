FROM ubuntu:latest
RUN apt-get update && apt-get install gnupg ca-certificates -y \ 
    && echo "deb https://s3.amazonaws.com/repo.deb.cyberduck.io stable main" | tee /etc/apt/sources.list.d/cyberduck.list \ 
    && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys FE7097963FEFBE72 \ 
    && apt-get update \ 
    && apt-get install duck
COPY entrypoint.sh /entrypoint.sh
# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
