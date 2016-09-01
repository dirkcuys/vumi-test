FROM praekeltfoundation/vumi

RUN apt-get-install.sh nodejs && \
    update-alternatives --install /usr/bin/node node /usr/bin/nodejs 50

ENV VXSANDBOX_VERSION "0.6.1"
RUN pip install vxsandbox==$VXSANDBOX_VERSION
COPY ./config.yaml /app/my-config.yaml

ENV WORKER_CLASS="vxsandbox.worker.StandaloneJsFileSandbox" \
    CONFIG_FILE="my-config.yaml" \
    AMQP_HOST="rabbitmq"
