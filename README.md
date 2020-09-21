edit Dockerfile to include any ubuntu packages you need installed

edit requirements.txt to include any python packages you need pip3 to install

# How to use

Running `make shell` will (download and) build the ubuntu docker image and drop you into a shell on running in the image (will only download if it hasn't yet been downloaded). The contents of your local directory will be mounted in /opt in the image

