FROM oraclelinux:8.4
LABEL name=yuva
RUN dnf install java-1.8.0-openjdk.x86_64 java-1.8.0-openjdk-devel.x86_64 maven git -y
RUN mkdir /yuva-project
WORKDIR /yuva-project
RUN git clone https://github.com/yuva-kiran/yuva-java-springboot.git
#here name should be git repo name
WORKDIR yuva-java-springboot
RUN mvn clean package
