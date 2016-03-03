FROM postgres

COPY entrypoint.sh /entrypoint.sh
COPY create-database.sh /docker-entrypoint-initdb.d/create-database.sh

RUN chmod u=rwx \
    /entrypoint.sh \
    /docker-entrypoint-initdb.d/create-database.sh

ENV PGDATA /data/postgresql/main

ENTRYPOINT ["/entrypoint.sh"]
CMD ["postgres"]
