# Use the official Python image
FROM python:3.9.22-slim

# Set the working directory
WORKDIR /app

# Copy the app files
COPY hello.py ./
COPY requirements.txt ./

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port the app runs on
EXPOSE 5001

# Command to run the app
CMD ["python", "hello.py"]
