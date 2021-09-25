FROM tcatonet/api_picspy-godbox

#CMD adduser -D root
#USER root
#RUN chmod 666 /var/run/docker.sock
#CMD groupadd docker

#RUN find / -name "*nginx."
#RUN grep -rnw 'etc' -e 'pub struct ValidationErrorDTO {'
#RUN grep -r 'PORT' -l --null . | xargs -0 sed -i 's#PORT#$PORT#g'

CMD /bin/sh -c grep\ -r\ \'PORT\'\ -l\ --null\ .\ \|\ xargs\ -0\ sed\ -i\ \'s\#PORT\#\$PORT\#g\'

#CMD adduser -D root
#USER root
#RUN chmod 666 /var/run/docker.sock
#CMD groupadd docker

#RUN cd etc && ls -a
#RUN chmod 666 -R /var
#RUN grep -r 'PORT' -l --null . | xargs -0 sed -i 's#PORT#$PORT#g'
#CMD /bin/sh -c godbox