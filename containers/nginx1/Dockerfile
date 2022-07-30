FROM nginx:1.20-alpine

RUN apk update \
    && apk upgrade \
    && apk add --no-cache --virtual .build-deps \
    bash \
    ca-certificates \
    dpkg \
    git \
    jq \
    make \
    tree \
    tar \
    zip \
    && rm -rf /var/lib/apt/lists/* \
    && rm /bin/sh && ln -sf /bin/bash /bin/sh \
    && echo "export PS1='\n\u@\h \w [\#]:\n\$ ' " >> ~/.bashrc \
    && echo "alias ll='ls -al'" >> ~/.bashrc \
    && echo "" >> ~/.bashrc

# nginx config file
COPY ./containers/nginx.conf /etc/nginx/
COPY ./containers/nginx1/default.conf /etc/nginx/conf.d/default.conf
RUN chmod 777 /etc/nginx/conf.d/default.conf
RUN mv /etc/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf
