FROM ubuntu as myapp
WORKDIR /opt

COPY requirements.txt /opt/requirements.txt
# needed  to get the interactive ubuntu container functional
RUN apt-get update && apt-get -y upgrade && apt-get -y install apt-utils
RUN apt-get -y install python3 python3-pip vim less
RUN pip3 install -r requirements.txt

