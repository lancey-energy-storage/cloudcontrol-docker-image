FROM alpine

ENV KUBE_VERSION="v1.15.3"
ENV DOCTL_VERSION="1.31.2"
ENV TERRAFORM_VERSION="0.12.9"

RUN apk add --no-cache ca-certificates \
    && apk add --no-cache -t deps curl \
    && apk add --no-cache gettext \
    && apk add --no-cache bash \
    && apk add --no-cache jq

RUN curl -L https://github.com/digitalocean/doctl/releases/download/v${DOCTL_VERSION}/doctl-${DOCTL_VERSION}-linux-amd64.tar.gz \
    | tar xz -C /bin

RUN mkdir /lib64 && ln -s /lib/libc.musl-x86_64.so.1 /lib64/ld-linux-x86-64.so.2

RUN curl -L https://storage.googleapis.com/kubernetes-release/release/${KUBE_VERSION}/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl \
    && chmod +x /usr/local/bin/kubectl

RUN wget -q -O /terraform.zip "https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip" \
    && unzip /terraform.zip -d /bin \
    && rm -f /terraform.zip
