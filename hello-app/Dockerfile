# Use an official Python runtime as the base image
FROM python:3.12.0-alpine

# Set the working directory in the container
WORKDIR /

# Copy the requirements file to the container and Install app dependencies
COPY requirements.txt .
RUN pip3 install -r requirements.txt

# Copy the rest of the app code to the container
COPY . .

# Expose the port your app listens on
EXPOSE 8000

# Specify the command to start the app
CMD [ "python",  "./app.py" ]