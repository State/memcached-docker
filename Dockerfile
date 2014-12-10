FROM fedora:21

RUN yum update -y -q; yum clean all
RUN yum install -y -q memcached; yum clean all

ENV MEMCACHED_PORT 11211
ENV MEMCACHED_CACHESIZE 64
EXPOSE 11211

CMD /usr/bin/bash -c '/usr/bin/memcached -u memcached -p ${MEMCACHED_PORT} -m ${MEMCACHED_CACHESIZE}'
