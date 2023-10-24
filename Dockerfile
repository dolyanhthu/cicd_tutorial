FROM ubuntu:latest
MAINTAINER Do Thu "anhthu270302@gmail.com"
RUN apt update -y 
RUN apt install -y python3 python3-pip python3-dev build-essential
ADD . /flask_app
WORKDIR /flask_app
RUN pip3 install -r requirements.txt
ENTRYPOINT ["python3"]
CMD ["flask_docker.py"]
