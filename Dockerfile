FROM mosaiksoftware/debian:onbuild
MAINTAINER  Chrisitan Holzberger <ch@mosaiksoftware.de>


##### PACKAGE INSTALLATION #####

RUN begin-apt && \
	set-selections monit  && \
	end-apt 

COPY tools/start-monit.sh /bin/start-monit
RUN chmod a+x /bin/start-monit && chmod 0700 /etc/monit-docker
EXPOSE 2812
#################################
CMD exec /bin/start-monit
