# Use a minimal Alpine image
FROM alpine:latest

# Install darkhttpd (tiny static web server)
RUN apk add --no-cache darkhttpd

# Create and switch to a working directory
WORKDIR /app

# Copy the HTML file into the container
COPY index.html /app/

# Expose port 8080 (you can change the port if you wish)
EXPOSE 8080

# Run darkhttpd on port 8080, serving /app directory
CMD ["darkhttpd", "/app", "--port", "8080"]

