FROM ubuntu

RUN \
  apt-get update && \
  apt-get install -y git-core

ADD .

RUN \
  printf 'echo "hello world"' > /srv/run.sh && \
  chmod 700 /srv/run.sh

CMD ["/bin/bash","-c","/srv/run.sh"]

