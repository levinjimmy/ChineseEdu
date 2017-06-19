FROM daocloud.io/library/python:3.4-onbuild
MAINTAINER jinming "928314021@qq.com"
WORKDIR /usr/src/app
COPY . /usr/src/app
RUN pip install --no-cache-dir -r requirements.txt \
    && chmod +x docker-entrypoint.sh \
    && chmod +x manage.py \
    && apt-get update \
    && apt-get install nginx \
    && mv /etc/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf.bak
COPY ./nginx.conf /etc/nginx/conf.d/nginx.conf
EXPOSE 8000
CMD ./docker-entrypoint.sh