FROM perl:5.26
ARG src
WORKDIR /work
RUN find $directory -type f -name "*.sh"  | xargs perl -pi -e 's/\r\n/\n/g'