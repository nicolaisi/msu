# start by pulling the python image
FROM python:3.9-alpine

EXPOSE 8888

COPY . /tmp
WORKDIR /tmp


# install the dependencies and packages in the requirements file
RUN python -m pip install -r bora/requirements.txt


CMD ["python", "app.py"]
