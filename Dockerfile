FROM alpine:3.15
RUN mkdir -p /usr/src/blog
WORKDIR /usr/src/blog
COPY package.json /usr/src/blog
RUN apt-get update && apt-get install -y npm
RUN npm install --registry=http://registry.npm.taobao.org
COPY . /usr/src/blog

RUN npm run build 
EXPOSE 8084
# 启动node应用
ENTRYPOINT [ "npm", "dev" ]