# Reference: https://randywestergren.com/running-a-hidden-tor-service-with-docker-compose/

FROM patrickod/tor-hidden-service

ADD ./start-tor.sh /bin/start-tor.sh

RUN chmod +x /bin/start-tor.sh

ADD ./get-tor-hostname.sh /bin/get-tor-hostname.sh

RUN chmod +x /bin/get-tor-hostname.sh