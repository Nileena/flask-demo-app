FROM python:3.10
RUN ["apt-get", "update"]
COPY . /demo_project
wORKDIR /demo_project
RUN ["pip", "install", "-r", "requirements.txt"]
# Make port 5000 available outside this container
EXPOSE 5000
CMD ["python", "app.py"]