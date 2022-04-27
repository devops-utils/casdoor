FROM yiluxiangbei/casdoor-golang:v1.0 AS BACK
WORKDIR /go/src/casdoor
COPY . .
RUN ./build.sh

FROM yiluxiangbei/casdoor-node:v1.0 AS FRONT
WORKDIR /web
COPY ./web .
RUN yarn run build


FROM yiluxiangbei/casdoor:v1.0
COPY --from=BACK /go/src/casdoor/ ./
COPY --from=BACK /usr/bin/wait-for-it ./
RUN mkdir -p web/build
COPY --from=FRONT /web/build /web/build
CMD  ./server
