# Use an official Python runtime as the base image
FROM python:3.9-slim

# Set environment variables to prevent Python from buffering outputs
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set the working directory in the container
WORKDIR /app

# Copy the entire project directory into the container
COPY . /app/

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port your application will run on (update based on your app)
EXPOSE 5000

# Define the command to run your application
CMD ["python", "app.py"]

