# Karate Demo Project

A demo/playground project for Karate API testing framework that demonstrates automated API testing capabilities using Docker containers.

## 📥 Installation

1. Clone the repository:
```bash
git clone https://github.com/apicomppas/karate-test.git
cd karate-test
```

## 🚀 Quick Start

The fastest way to get started is using Docker Compose:

```bash
# Build and run tests with logs saved
docker compose up -d --build
docker logs -f karate_demo_c > test_output.txt
```

## 📋 Prerequisites

- Git
- Docker
- Docker Compose
- Java 17 (only if running locally without Docker)
- Maven (only if running locally without Docker)

## 🐳 Running with Docker Compose (Recommended)

### Run Tests and Save Logs

1. Build and start the container:
```bash
docker compose up -d --build
```

2. View and save test logs:
```bash
docker logs -f karate_demo_c > test_output.txt
```

### Access Container Shell

If you need to access the container's shell for debugging or running specific tests:

1. Modify `docker-compose.yaml`:
```yaml
command: /bin/bash
```

2. Start the container:
```bash
docker compose up -d --build
```

3. Access the shell:
```bash
docker exec -it karate_demo_c /bin/bash
```

## 🐋 Alternative: Running with Docker Directly

### Build the Image

```bash
docker build -t karate-demo .
```

### Run Tests

```bash
docker run -it karate-demo mvn test
```

### Access Container Shell

```bash
docker run -it karate-demo /bin/bash
```

## 💡 Benefits of Using Docker Compose

- **Consistency**: Ensures consistent testing environment across different machines
- **Automated Logging**: Easy log capture and storage
- **Volume Mounting**: Seamless access to test results and reports
- **Configuration Management**: Easy to maintain and version control through docker-compose.yaml
- **Reproducibility**: Same behavior across different environments

## 📁 Project Structure

```
karate-demo/
├── src/
│   └── test/
│       ├── java/        # Test runners and support code
│       └── resources/   # Feature files and test data
├── docker-compose.yaml  # Docker Compose configuration
├── Dockerfile          # Docker image definition
├── pom.xml            # Maven configuration
└── test_output.txt    # Generated test logs
```

## 🔧 Configuration

The project uses standard Maven directory structure and can be configured through:
- `pom.xml` for Maven and Karate settings
- `docker-compose.yaml` for container configuration
- `Dockerfile` for image building instructions

## 📝 Logs

Test logs are automatically saved to `test_output.txt` in your project directory when running with Docker Compose.