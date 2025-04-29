FROM postgres:latest
#ENV POSTGRES_USER=crb_dev_user
#ENV POSTGRES_PASSWORD=2f!G3TkH13NM
#ENV POSTGRES_DB=crb_dev
COPY crb_local.sql  /docker-entrypoint-initdb.d/
EXPOSE 5432
