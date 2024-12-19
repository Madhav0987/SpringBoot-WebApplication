FROM ubuntu
RUN apt update -y
RUN apt install git -y
RUN apt install openjdk-11-jdk -y
RUN apt install maven -y
RUN apt-get clean
WORKDIR /Test
ARG Repo=https://github.com/Madhav0987/java-example.git
RUN git clone $Repo /Test
RUN mvn clean package
CMD ["/bin/bash"]

