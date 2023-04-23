FROM openjdk:19-jdk

# Install Gradle
RUN wget https://services.gradle.org/distributions/gradle-7.3-bin.zip -P /tmp \
    && unzip -d /opt/gradle /tmp/gradle-*.zip \
    && rm /tmp/gradle-*.zip

# Set environment variables
ENV GRADLE_HOME=/opt/gradle/gradle-7.3
ENV PATH=${GRADLE_HOME}/bin:${PATH}

# Copy project files
COPY . /app
WORKDIR /app

# Build project
RUN gradle build
