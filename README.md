# tincubeth node

## Table of Contents

* [Intro](#intro)
* [Setup](#setup)
* [Links](#links)

## Intro <a id="intro"></a>

See the tincubeth [docs repo](https://github.com/tincubeth/doc)

## Setup <a id="setup"></a>

### Incubed Client with [Tor (Onion Services)](https://2019.www.torproject.org/docs/onion-services.html.en) support

* Build Docker containers
  ```bash
  docker-compose up -d
  ```

* View logs to obtain Onion URL
  ```
  docker-compose logs tor
  ```

* Rebuild Docker containers
  ```bash
  docker-compose up --build
  ```

* View Docker containers
  ```bash
  docker ps
  ```

## Links <a id="links"></a>

* https://github.com/slockit/in3
* https://etherscan.io/address/0x2736d225f85740f42d17987100dc8d58e9e16252#code
* https://github.com/slockit/in3#chains
* https://github.com/slockit/in3/blob/master/docs/getting_started.md#as-docker-container
* https://randywestergren.com/running-a-hidden-tor-service-with-docker-compose/