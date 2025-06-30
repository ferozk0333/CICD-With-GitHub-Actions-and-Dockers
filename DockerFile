# Base Image
FROM python:3.9-slim

# Working Directory
WORKDIR /app

# Copy the current directory contents ino the container at /app
COPY . /app

# RUN and install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose Port
EXPOSE 5000

# CMD to run the application
CMD ["python", "app.py"]