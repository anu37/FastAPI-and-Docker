# Pull base image
FROM python:3.7
# Set environment varibles
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
WORKDIR /code/
# Install dependencies
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . /code/
EXPOSE 8000
CMD ["python", "main.py"]