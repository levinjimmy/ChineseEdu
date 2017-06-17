FROM daocloud.io/library/python:3.4-onbuild
MAINTAINER jinming "928314021@qq.com"
WORKDIR /usr/src/app
COPY . /usr/src/app
RUN pip install --no-cache-dir -r requirements.txt \
    && chmod +x docker-entrypoint.sh
EXPOSE 8000
CMD ./docker-entrypoint.sh