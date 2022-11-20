FROM node:18.12.0

RUN useradd ethercalc --create-home
RUN npm config set user root
#RUN npm install -g ethercalc
#RUN npm install -g pm2 --unsafe
RUN #rm -rf /usr/local/lib/node_modules/ethercalc/node_modules/nodemailer/ || true
RUN mkdir -p /bin
RUN mkdir -p /src
RUN mkdir -p /app
#COPY ./bin /bin
#COPY ./src /src
#COPY ./package.json ./package.json
#COPY ./node_modules ./node_modules
COPY ./ ./

USER ethercalc
EXPOSE 8000
#CMD ["npm", "install"]
CMD ["bash", "./bin/run.sh"]
