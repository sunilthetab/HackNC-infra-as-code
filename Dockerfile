# using docker with JAVA8 base
FROM dpatriot/docker-awscli-java8

# Maintainer information
MAINTAINER "Sunil Narasimhamurthy suniltheta.com" <suniltheta@gmail.com>

# Expose port so that user of this file knows
EXPOSE 8080

# Set label
LABEL version="1.0"

# Copy jar files
COPY *.jar /data/app.jar

# This command runs when docker starts
ENTRYPOINT ["java","-jar","app.jar"]
