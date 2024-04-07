FROM ubuntu/nginx

LABEL seftonca="seftonca@student.21-school.ru"

WORKDIR /temp

COPY server/mini_server.c .
COPY run.sh .
COPY nginx/nginx.conf /etc/nginx/

RUN apt-get update \
	&& apt-get install -y gcc spawn-fcgi libfcgi-dev \
	&& rm -rf /var/lib/apt/lists/* \
	&& chmod +x run.sh 

RUN chown -R nginx:nginx /etc/nginx/nginx.conf; \
	chown -R nginx:nginx /temp; \
	touch /var/run/nginx.pid; \
	chown -R nginx:nginx /var/run/nginx.pid; \
	chown -R nginx:nginx /var/log/nginx; \
	chown -R nginx:nginx /var/lib

USER nginx

ENTRYPOINT ["./run.sh"]

HEALTHCHECK --interval=5m --timeout=3s \
	CMD curl -f http://localhost/ || exit 1
