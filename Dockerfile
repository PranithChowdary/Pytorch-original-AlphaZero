# Use the official PyTorch image as the base image
FROM pytorch/pytorch:latest

# Set the working directory in the container
WORKDIR /app

# Copy the current project files to the container
COPY . /app

# Install any additional dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port the application runs on (if applicable)
EXPOSE 8080

# Set the default command to run the application
CMD ["python", "main.py"]