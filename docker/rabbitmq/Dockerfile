FROM rabbitmq:3.8-management

RUN apt-get update && \
apt-get install -y curl unzip

RUN curl -L https://github.com/rabbitmq/rabbitmq-delayed-message-exchange/releases/download/3.8.9/rabbitmq_delayed_message_exchange-3.8.9-0199d11c.ez > $RABBITMQ_HOME/plugins/rabbitmq_delayed_message_exchange-3.8.9.ez

RUN chown rabbitmq:rabbitmq $RABBITMQ_HOME/plugins/rabbitmq_delayed_message_exchange-3.8.9.ez

RUN rabbitmq-plugins enable rabbitmq_delayed_message_exchange
