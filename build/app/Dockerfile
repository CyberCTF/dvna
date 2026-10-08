# Damn Vulnerable NodeJS Application
# Upstream's Dockerfile (app/Dockerfile) with these changes: node:carbon is pinned to its last
# release (8.17.0), the source is copied from app/, DVNA ships no lockfile so npm resolves every
# dependency as of the last change to package.json (npm_config_before), and the database settings
# of the README's vars.env are baked in as ENV.

FROM node:8.17.0
LABEL MAINTAINER "Subash SN"

ENV npm_config_before=2018-08-20T18:02:46Z \
    MYSQL_USER=dvna \
    MYSQL_DATABASE=dvna \
    MYSQL_PASSWORD=passw0rd \
    MYSQL_HOST=mysql-db \
    MYSQL_PORT=3306

WORKDIR /app

COPY app/ .

RUN chmod +x /app/entrypoint.sh \
	&& npm install

CMD ["bash", "/app/entrypoint.sh"]
