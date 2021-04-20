FROM kong:2.4.0-centos

LABEL description="Centos 7 + Kong 2.4.04 + kong-oidc plugin"

USER root

RUN yum install -y git unzip && yum clean all

RUN luarocks install kong-oidc

USER kong
