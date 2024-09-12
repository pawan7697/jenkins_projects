FROM python:3.8
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /jenkins_projects
COPY requirements.txt /jenkins_projects/
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
COPY . /jenkins_projects/
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]

