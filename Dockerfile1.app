FROM golang:1.17.5 AS BACK
WORKDIR /go/src/casdoor
COPY docs/sources.list /etc/apt/sources.list
COPY . .
RUN ./build.sh && apt update && apt install wait-for-it && chmod +x /usr/bin/wait-for-it

FROM node:16.13.0 AS FRONT
WORKDIR /web
COPY ./web .
RUN yarn config set registry https://registry.npmmirror.com
RUN yarn install && yarn run build


FROM yiluxiangbei/casdoor:v1.0
COPY --from=BACK /go/src/casdoor/ ./
COPY --from=BACK /usr/bin/wait-for-it ./
RUN mkdir -p web/build
COPY --from=FRONT /web/build /web/build
CMD  ./server
