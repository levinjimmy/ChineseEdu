FROM daocloud.io/library/python
COPY docker-entrypoint.sh docker-entrypoint.sh
RUN chmod +x docker-entrypoint.sh
EXPOSE 8000

CMD /code/docker-entrypoint.sh