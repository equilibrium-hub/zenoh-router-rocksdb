FROM eclipse/zenoh:0.6.0-beta.1

COPY libzbackend_rocksdb.so .
# COPY zenoh.json5 .

# RUN echo '#!/bin/ash' > /entrypoint.sh
# RUN echo 'echo " * Starting: /zenohd with RocksDB storage $*"' >> /entrypoint.sh
# RUN echo 'exec /zenohd -c zenoh.json5 $*' >> /entrypoint.sh

RUN chmod +x /entrypoint.sh
RUN chmod +x libzbackend_rocksdb.so