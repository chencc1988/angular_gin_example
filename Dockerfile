FROM node:16.17.0-alpine3.15 as frontend
USER root
WORKDIR /root
COPY . .
RUN npm run install:frontend && npm run build:frontend

FROM golang:1.19.0-alpine3.15 as backend
USER root
WORKDIR /root
COPY . .
RUN go env -w GOPROXY=https://goproxy.cn,direct && go env -w CGO_ENABLED=0
RUN cd server && go mod tidy
RUN go build -o server.exe example.com/server

FROM alpine:3.15
USER root
WORKDIR /root
RUN apk add caddy=2.4.6-r3
COPY --from=frontend /root/client/dist ./client/dist
COPY --from=backend /root/server.exe ./server.exe 
COPY ./entrypoint.sh ./entrypoint.sh
COPY ./proxy/Caddyfile ./Caddyfile
ENTRYPOINT [ "/root/entrypoint.sh" ]