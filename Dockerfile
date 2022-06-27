FROM node:16-alpine
RUN mkdir -p /usr/src/blog
WORKDIR /usr/src/blog
COPY package.json /usr/src/blog
RUN npm install --registry=http://registry.npm.taobao.org
COPY . /usr/src/blog

RUN npm run build 
EXPOSE 8084
# 启动node应用
ENTRYPOINT [ "npm", "dev" ]