FROM fusuf/whatsasena:latest

RUN git clone https://github.com/Muhammedhashirm009/Hashir0 /root/wabot-aq
WORKDIR /root/wabot-aq/
ENV TZ=Europe/Istanbul
RUN npm install supervisor -g
RUN yarn install --no-audit
RUN yarn install ffmpeg -y
RUN yarn install imagemagick -y
CMD ["node", "index.js"]
