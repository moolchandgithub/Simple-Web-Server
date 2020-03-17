FROM node:13
RUN useradd -d /home/web -m web
USER web
EXPOSE 3000

WORKDIR /home/web/
RUN git clone https://github.com/BrooksPatton/Simple-Web-Server.git
WORKDIR /home/web/Simple-Web-Server
RUN npm install

CMD ["npm", "start"]
