# Build stage
FROM maven:3.9.6-eclipse-temurin-17 AS builder
WORKDIR /workspace/karate-demo
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests=true

# Test stage
FROM maven:3.9.6-eclipse-temurin-17
WORKDIR /workspace/karate-demo
# Copy compiled artifacts and dependencies from builder stage
COPY --from=builder /workspace/karate-demo/target ./target
COPY --from=builder /root/.m2 /root/.m2
# Copy source files needed for test execution
COPY src ./src
COPY pom.xml .
# Default command to run tests
CMD ["mvn", "clean", "test", "-Dtest=TestRunner"]