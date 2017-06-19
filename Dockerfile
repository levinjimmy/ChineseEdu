FROM daocloud.io/library/python:3.4-onbuild
MAINTAINER jinming "928314021@qq.com"
WORKDIR /usr/src/app
COPY . /usr/src/app
RUN pip install --no-cache-dir -r requirements.txt \
    && chmod +x docker-entrypoint.sh \
    && chmod +x manage.py \
    && apt-get update \
    && apt-get  -y --no-install-recommends install nginx \
    && rm /etc/nginx/sites-enabled/default
ADD sites-enabled/ /etc/nginx/sites-enabled/
CMD ./docker-entrypoint.sh