# Use latest alpine build
FROM alpine:latest

# Install dependencies to compile and debug assembly
RUN apk add gdb build-base nasm gcc

# Set work directory to /app
WORKDIR /app

# Copy everything from current folder into /app in container
COPY . .