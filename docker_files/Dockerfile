FROM ubuntu

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install nodejs npm git nginx -y
RUN git clone https://github.com/mateuszsokola/2048-in-react
RUN cd 2048-in-react
RUN npm install
RUN npm run build

CMD ["echo","Everything completed"]