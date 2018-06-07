FROM perl:5.26 as converter
ARG src
COPY ${src} /work
WORKDIR /work
RUN find $directory -type f -name "*.sh"  | xargs perl -pi -e 's/\r\n/\n/g'