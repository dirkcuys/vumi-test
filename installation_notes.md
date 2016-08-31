Setup docker
Create rabbitmq image

    docker run -d --hostname my-rabbit --name some-rabbit rabbitmq

Setup rabbitmq

    docker exec -it some-rabbit rabbitmqctl add_user vumi vumi
    docker exec -it some-rabbit rabbitmqctl add_vhost /develop
    docker exec -it some-rabbit rabbitmqctl set_permissions -p /develop vumi '.*' '.*' '.*'

Run vumi image

    docker run -it --link some-rabbit:rabbitmq vumi /bin/bash




