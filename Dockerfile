FROM node:lts-alpine


RUN apk add --update --no-cache nodejs curl ca-certificates && \
    update-ca-certificates && \
    curl -sL https://storage.googleapis.com/kubernetes-release/release/v1.20.2/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl && chmod a+x /usr/local/bin/kubectl