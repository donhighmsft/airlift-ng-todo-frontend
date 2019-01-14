# Angular Airlift Container Workshop on Docker and Jenkins

This is a sample ToDo App to show Jenkins pipeline, Angular, and Docker

This app manages to-dos. Using the app, the user can list, add, edit and remove to-dos.

### Docker: Building a Container Image

```bash
# Build the image 
docker build -t orlando1409/to-do-app

# Run the image 
docker run -p 80:80 orlando1409/to-do-app

```