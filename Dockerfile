FROM python:2-onbuild

RUN mkdir --parents /root/dagobah/daemon/
COPY dagobah/daemon/dagobahd.yml /etc/dagobahd.yml
WORKDIR /usr/src/app
RUN python setup.py install
CMD dagobahd
EXPOSE 80