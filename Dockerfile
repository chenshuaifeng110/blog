FROM node
RUN mkdir -p /usr/src/blog
WORKDIR /usr/src/blog
COPY package.json /usr/src/blog
RUN yarn install --registry=http://registry.npm.taobao.org
COPY . /usr/src/blog
VOLUME [ "/usr/src/blog" ]
# RUN npm run dev 
RUN echo "命令启动中"
EXPOSE 8084
# 启动node应用
# ENTRYPOINT [ "npm", "dev" ]