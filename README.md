# DE-VSCODE

Docker image with code-server for browser-based VS Code development environments.

## Highlights

- Pre-configured code-server instance ready to run
- Based on a lightweight Debian base image
- Single-command build and deploy via Makefile
- Automated Dockerfile linting with hadolint

## Prerequisites

- **Docker** — required to build and run the image

## Quick Start

```bash
make build
docker run --rm -p 8080:8080 carlosrabelo/de-vscode:latest
```

## Usage

Run the image and expose port 8080:

```bash
docker run --rm -p 8080:8080 carlosrabelo/de-vscode:latest
```

Open your browser to `http://localhost:8080` and authenticate with the password shown in the container logs.

## Development

```bash
make build      # Build the Docker image
make test       # Run tests (verify code-server starts)
make quality    # Lint the Dockerfile with hadolint
make push       # Push image to registry
```

## License

This project is licensed under the MIT License — see [LICENSE](LICENSE) for details.
