# Simple HTTP Echo Server

This is a simple HTTP server written in Go that echoes back the details of
incoming requests as JSON.


## Building the Docker Image
1. Build the Docker image:
    ```sh
    docker build -t http-echo .
    ```

## Running the Docker Container
1. Run the Docker container:
    ```sh
    docker run --rm -p 8080:8080 http-echo
    ```
