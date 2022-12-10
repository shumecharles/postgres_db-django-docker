# Pull base image
FROM python:3.10
# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
# Set work directory
WORKDIR /hello
# Install dependencies
COPY Pipfile Pipfile.lock /hello/
RUN pip install pipenv && pipenv install --system
# Copy project
COPY . /hello/