# tincubeth node

## Table of Contents

* [Intro](#intro)
* [Setup](#setup)
* [Links](#links)

## Intro <a id="intro"></a>

See the tincubeth [docs repo](https://github.com/tincubeth/doc)

## Setup <a id="setup"></a>

### Using [Tor (Onion Services)](https://2019.www.torproject.org/docs/onion-services.html.en) with Incubed Client

#### Using Parity-Ethereum

* Build Docker containers
  ```bash
  docker-compose -f docker-compose-parity-tor.yml up -d
  ```

* Rebuild Docker containers
  ```bash
  docker-compose -f docker-compose-parity-tor.yml up --build
  ```

#### Using Geth

* Build Docker containers
  ```bash
  docker-compose -f docker-compose-geth-tor.yml up -d
  ```

* Rebuild Docker containers
  ```bash
  docker-compose -f docker-compose-geth-tor.yml up --build
  ```

#### Other

* View logs to obtain Onion URL (i.e. HOSTNAME.onion)
  ```bash
  docker-compose logs tor
  ```

* Example Query with an Incubed Client using JSON-RPC via Tor. Replace `HOSTNAME` with the Onion URL
  ```bash
  curl --socks5-hostname 127.0.0.1:9050 <HOSTNAME.onion>:8545 -X POST -H "Content-Type: application/json" --data '{"jsonrpc":"2.0","method":"web3_clientVersion","params":[],"id":67}'
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