FROM registry.access.redhat.com/ubi8/ubi:8.10-1088

WORKDIR /app

RUN yum -y update; \
    yum -y install wget curl python39.x86_64 python3-pip.noarch; \
    wget https://github.com/s3tools/s3cmd/releases/download/v2.4.0/s3cmd-2.4.0.tar.gz; \
    tar zxvf s3cmd-2.4.0.tar.gz;\
    cd s3cmd-2.4.0;\
    python3 setup.py install

    
ENTRYPOINT ["sleep", "infinity"]
