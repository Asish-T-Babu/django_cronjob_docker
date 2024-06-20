# Use Python 3.10.2 as base image
FROM python:3.10.2

# Set environment variables
ENV PYTHONUNBUFFERED 1

# Install cron and vim
RUN apt-get update && apt-get -y install cron vim

# Set working directory
WORKDIR /django

# Upgrade pip
RUN pip install --upgrade pip

# Copy the entire current directory into the container
COPY . /django

# Install Python dependencies from requirements.txt
RUN pip install -r /django/requirements.txt


# Copy entrypoint script and set execute permissions
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Define the command to run the entrypoint script
ENTRYPOINT [ "/entrypoint.sh" ]
