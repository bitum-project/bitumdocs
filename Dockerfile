# Build image
FROM python:3.7.3

LABEL description="bitumdocs build"
LABEL version="1.0"
LABEL maintainer "dev@bitum.io"

USER root
WORKDIR /root

COPY ./ /root/

RUN pip install mkdocs && \
	pip install --user -r requirements.txt

RUN ./bin/build_docs.sh

# Serve image (stable nginx version)
FROM nginx:1.16.0

LABEL description="bitumdocs serve"
LABEL version="1.0"
LABEL maintainer "dev@bitum.io"

COPY conf/nginx.conf /etc/nginx/conf.d/default.conf

COPY --from=0 ./root/site/ /usr/share/nginx/html
