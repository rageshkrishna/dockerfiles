# RabbitMQ SSL demo

## Server
The `server` folder contains a self-signed certificate and the necessary config files to build a RabbitMq server container

To build and run the server:
````
cd server
docker build --rm -t=ragesh/rabbitmq-server
docker run -d -name sslmq ragesh/rabbitmq-server
````

## Client
The `client` folder contains a sample python asynchronous consumer that connects to RabbitMq running in a linked container named `mq`. It connects using `amqps`.

To build and run the client:
````
cd client
docker build --rm -t=ragesh/rabbitmq-client
docker run -it --rm --link sslmq:mq ragesh/rabbitmq-client
````
