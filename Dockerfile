# Start from the official Golang base image
FROM golang:1.20

# Set the working directory inside the container
WORKDIR /app

# Copy go.mod and go.sum files to the working directory
COPY go.mod go.sum ./

# Download all Go module dependencies
RUN go mod download

# Copy the source code to the working directory
COPY . .

# Build the Go application
RUN go build -o hello-world-api .

# Expose the port the app runs on
EXPOSE 8080

# Start the Go application
CMD ["./hello-world-api"]
