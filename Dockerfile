FROM daocloud.io/library/python:3.4-onbuild
MAINTAINER jinming "928314021@qq.com"
#WORKDIR /usr/src/app
COPY docker-entrypoint.sh docker-entrypoint.sh
RUN chmod +x docker-entrypoint.sh
EXPOSE 8000

CMD ./docker-entrypoint.sh