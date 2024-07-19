# Base image for Jenkins
FROM jenkins/jenkins

# Install plugins required for Git and Docker support
RUN apt-get update && \
    apt-get install -y git docker docker-compose

# Configure Jenkins user home directory
WORKDIR /var/lib/jenkins

# Copy any additional configuration files (optional)
# COPY jenkins.config /var/lib/jenkins/

# Expose Jenkins port (default 8080)
EXPOSE 80

# Run Jenkins in foreground
CMD ["jenkins", "wait"]
