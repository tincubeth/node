# tincubeth

## Table of Contents

* [Setup](#setup)
* [Links](#links)

## Setup <a id="setup"></a>

* Setup Incubed Client with [Tor (Onion Services)](https://2019.www.torproject.org/docs/onion-services.html.en) support
  * Start Docker container with Tor (Onion Services)
    ```bash
    ```

  * Start Docker container with Incubed Client as standalone (allowing other apps to connect to it)

    ```bash
    docker run -d -p 8545:8545 slockit/in3:latest --chainId=goerli
    ```

## Links <a id="links"></a>

* https://github.com/slockit/in3
* https://etherscan.io/address/0x2736d225f85740f42d17987100dc8d58e9e16252#code
* https://github.com/slockit/in3#chains
* https://github.com/slockit/in3/blob/master/docs/getting_started.md#as-docker-container
