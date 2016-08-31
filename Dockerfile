FROM ubuntu:14.04

MAINTAINER Dirk Uys <dirkcuys@gmail.com>

# Install requirements
RUN apt-get update && apt-get install -y \
    git-core \
    build-essential \
    libssl-dev \
    libffi-dev \
    python \
    python-dev \
    python-virtualenv

# Setup application
#COPY . /opt/src/app/
RUN virtualenv /var/app/venv/ && /var/app/venv/bin/pip install -e git+git://github.com/praekelt/vumi.git@develop#egg=vumi

EXPOSE 80

#TODO ENTRYPOINT ["/docker-entry.sh"]
#CMD ["supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]
