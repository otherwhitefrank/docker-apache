############################################################
# Dockerfile to build Apache container image
# Based on Ubuntu
############################################################


# Set the base image to Ubuntu
FROM ubuntu

# File Author / Maintainer
MAINTAINER Frank Dye

# Update the repository sources list
RUN apt-get update

# Install Apache package (.deb)
RUN apt-get install -y apache2

# Port 80 for websites
EXPOSE 80

#Start the Apache service
RUN service apache2 start

#Install curl for ease of use
RUN apt-get install curl
