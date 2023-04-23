FROM openjdk:17

# Install Maven
RUN apt-get update && \
    apt-get install -y maven

# Install H2 database
RUN curl -L -o h2.jar http://repo2.maven.org/maven2/com/h2database/h2/1.4.200/h2-1.4.200.jar

# Set up Thymeleaf
RUN mkdir /thymeleaf && \
    cd /thymeleaf && \
    git clone https://github.com/thymeleaf/thymeleaf.git

# Set the working directory
WORKDIR /workspace

# Expose port 8080 for web access
EXPOSE 8080
