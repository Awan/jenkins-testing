# Use a lightweight base image
FROM alpine:latest

# Set the working directory to /app
WORKDIR /app

# Create a file named hello-world.sh and add the echo command
RUN echo 'echo "Hello, World!"' > hello-world.sh

# Make the script executable
RUN chmod +x hello-world.sh

# Run the script when the container starts
CMD ["./hello-world.sh"]

