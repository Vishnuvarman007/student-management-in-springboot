@echo off
echo Testing Student Management System API...
echo.

echo 1. Starting application in background...
start /B mvn spring-boot:run

echo 2. Waiting for application to start...
timeout /t 15 /nobreak > nul

echo 3. Testing GET all students (should return empty array)...
curl -X GET http://localhost:8080/api/students
echo.

echo 4. Creating a new student...
curl -X POST http://localhost:8080/api/students -H "Content-Type: application/json" -d "{\"name\":\"John Doe\",\"email\":\"john@example.com\",\"age\":20}"
echo.

echo 5. Getting all students again...
curl -X GET http://localhost:8080/api/students
echo.

echo Test completed. Press any key to stop the application...
pause > nul

echo Stopping application...
taskkill /F /IM java.exe > nul 2>&1