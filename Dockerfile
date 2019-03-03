#Use an official Python runtime as a parent image
FROM python:3.5
MAINTAINER dlow "dlow@mit.edu"

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app

# Install any needed packages specified in requirements_docker.txt
RUN pip install --trusted-host pypi.python.org -r requirements_docker.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV NAME gpt

# Run app.py when the container launches
CMD ["python", "app.py"]
