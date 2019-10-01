FROM mixbytes/haya:devel
WORKDIR contracts
ADD . .
RUN echo $(git describe --tags --dirty) >> /etc/contracts.version
RUN ./build.sh
