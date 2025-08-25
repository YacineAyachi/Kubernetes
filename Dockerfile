# Use the official Python image
FROM python:3.12

# Set the working directory inside the container
WORKDIR /app

# Copy the application files
COPY app.py /app

# Install FastAPI and Uvicorn
RUN pip install fastapi uvicorn

# Expose port 8000
EXPOSE 8000

# Command to run the API
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]
