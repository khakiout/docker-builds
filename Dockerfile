FROM openjdk:8-jdk
RUN apt-get update && apt-get install wget curl ca-certificates rsync python3-pip -y
RUN curl -sL https://deb.nodesource.com/setup_13.x | bash -
RUN apt-get install -y nodejs
RUN node --version
RUN npm --version
RUN java -version
RUN npm install -g serverless@1.63.0;
RUN serverless -v
RUN pip3 install awscli --upgrade
RUN aws --version
CMD ["/bin/bash"]