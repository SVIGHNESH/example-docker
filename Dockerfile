# Step 1: Use an official Python image
FROM python:3.12-slim

# Step 2: Set the working directory
WORKDIR /app

# Step 3: Copy requirements file
COPY requirements.txt .

# Step 4: Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Step 5: Copy the remaining project files
COPY . .

# Step 6: Expose the application's port
EXPOSE 5000

# Step 7: Command to run the application
CMD ["python", "app.py"]
