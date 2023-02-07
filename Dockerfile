FROM node:lts-alpine


RUN apk add --update --no-cache nodejs curl ca-certificates && \
    update-ca-certificates && \
    curl -sL https://storage.googleapis.com/kubernetes-release/release/v1.26.1/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl && chmod a+x /usr/local/bin/kubectl && \
    curl -o /tmp/vault.zip https://releases.hashicorp.com/vault/1.12.3/vault_1.12.3_linux_amd64.zip && \
    unzip /tmp/vault.zip
