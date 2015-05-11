FROM iojs:2

EXPOSE 3000

# copy app files and install dependencies
ADD . /usr/src/app
WORKDIR /usr/src/app
RUN npm install

CMD ["npm", "start"]
