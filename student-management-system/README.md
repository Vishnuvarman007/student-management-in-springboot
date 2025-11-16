# Student Management System

A simple Spring Boot REST API for managing student records with a web interface.

## Features

- Add, view, and delete students
- REST API endpoints
- H2 in-memory database
- Web interface for testing

## Requirements

- Java 17+
- Maven 3.6+

## How to Run

1. **Clone/Download the project**
2. **Navigate to project directory:**
   ```bash
   cd student-management-system
   ```
3. **Run the application:**
   ```bash
   mvn spring-boot:run
   ```
4. **Access the application:**
   - Web Interface: http://localhost:8081
   - H2 Console: http://localhost:8081/h2-console

## API Endpoints

| Method | URL | Description |
|--------|-----|-------------|
| GET | `/api/students` | Get all students |
| GET | `/api/students/{id}` | Get student by ID |
| POST | `/api/students` | Create new student |
| PUT | `/api/students/{id}` | Update student |
| DELETE | `/api/students/{id}` | Delete student |

## Student JSON Format

```json
{
  "name": "John Doe",
  "email": "john@example.com",
  "age": 20
}
```

## H2 Database Access

- **URL:** `jdbc:h2:mem:testdb`
- **Username:** `sa`
- **Password:** (empty)

## Testing

Use the web interface at http://localhost:8081 or test API endpoints with curl/Postman.

## Project Structure

```
src/
├── main/
│   ├── java/com/example/student/
│   │   ├── Student.java              # Entity
│   │   ├── StudentRepository.java    # Repository
│   │   ├── StudentController.java    # REST Controller
│   │   └── StudentManagementApplication.java # Main class
│   └── resources/
│       ├── application.properties    # Configuration
│       └── static/
│           └── index.html           # Web interface
└── pom.xml                          # Maven dependencies
```