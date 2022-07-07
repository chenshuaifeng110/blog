FROM node:14.19
RUN mkdir -p /usr/src/blog
WORKDIR /usr/src/blog
COPY package.json /usr/src/blog
RUN yarn install --registry=http://registry.npm.taobao.org
COPY . /usr/src/blog
VOLUME [ "/usr/src/blog" ]
EXPOSE 8084