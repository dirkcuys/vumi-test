# Minimal viable example for testing out the Vumi JavaScript Sandbox

## Requirements

To run the example, you need to install [docker-engine](https://docs.docker.com) and [docker-compose](https://docs.docker.com/compose/). See the official docker documentation for guidance.

Once you've installed docker and docker-compose, you can run the example by running:

    docker-compose build
    docker-compose up

in a command line.

To interact with the example application, open up a telnet client

    telnet localhost 9010

You should see

> Hi there! What do you want to do?

> 1. Show this menu again

> 2. Exit
