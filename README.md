# Resource Estimation API

This API provides hardware and network resource estimates for various types of applications, based on parameters like application type, number of users, and requests per second.

## Getting Started

To start the application, ensure that the required dependencies are installed and that your configuration is set up correctly.

### Prerequisites

- Java 11 or later
- Spring Boot
- H2 Database (in-memory)

### Setting Up

1. Clone the repository:
   ```bash
   git clone <repository-url>
   cd resource-estimation-api
### Start the application:
./mvnw spring-boot:run

### H2 DB
The H2 database console can be accessed at http://localhost:8080/h2-console.
Default credentials:

JDBC URL: jdbc:h2:mem:testdb
Username: sa
Password: (leave blank)

