FROM phusion/passenger-nodejs:0.9.15

EXPOSE 80

# Set correct environment variables.
ENV HOME /root

# Use baseimage-docker's init process.
CMD ["/sbin/my_init"]

# configure nginx
RUN rm /etc/nginx/sites-enabled/default
ADD nginx.conf /etc/nginx/sites-enabled/webapp.conf
RUN mkdir /home/app/webapp

# copy app files and install dependencies
ADD . /home/app/webapp
WORKDIR /home/app/webapp
RUN npm install

# start nginx and Passenger
RUN rm -f /etc/service/nginx/down

# Clean up APT
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
