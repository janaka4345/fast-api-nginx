# Use the official Python base image
FROM python:3.10

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file to the working directory
COPY requirements.txt .

# Install the Python dependencies
RUN pip install -r requirements.txt

# Copy the application code to the working directory
COPY . .

# Expose the port on which the application will run
EXPOSE 8000

# Run the FastAPI application using uvicorn server
# CMD ["uvicorn", "fastapi", "--host", "0.0.0.0", "--port", "8080"]
CMD ["fastapi", "run", "app/main.py", "--port", "8000"]