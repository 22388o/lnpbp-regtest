#!/bin/bash

source .env

alias b01="docker-compose exec -T node1 bitcoin-cli -chain=regtest -rpcconnect=localhost -rpcport=${BITCOIN_RPC_PORT} -rpcuser=${BITCOIN_RPC_USER} -rpcpassword=${BITCOIN_RPC_PASSWORD}"
alias b02="docker-compose exec -T node2 bitcoin-cli -chain=regtest -rpcconnect=localhost -rpcport=${BITCOIN_RPC_PORT} -rpcuser=${BITCOIN_RPC_USER} -rpcpassword=${BITCOIN_RPC_PASSWORD}"

alias lnpd1="docker-compose run --rm lnp1 --network=regtest -vvvv --data-dir=${LNP_DATA_DIR} --electrum-server=${ELECTRS_IP} --electrum-port=${ELECTRS_PORT}"
alias lnpd2="docker-compose run --rm lnp2 --network=regtest -vvvv --data-dir=${LNP_DATA_DIR} --electrum-server=${ELECTRS_IP} --electrum-port=${ELECTRS_PORT}"

alias lnp01="docker-compose exec -T lnp1 lnp-cli -vvvv"
alias lnp02="docker-compose exec -T lnp2 lnp-cli -vvvv"

alias cln01="docker-compose exec cln1 lightning-cli --network=regtest"

alias rgbd1="docker-compose run --rm rgb1 -vvvv --network=regtest --bin-dir=${RGB_BIN_DIR} --data-dir=${RPC_DATA_DIR} --electrum-server=${ELECTRS_HOST} --electrum-port=${ELECTRS_PORT}"
alias rgbd2="docker-compose run --rm rgb2 -vvvv --network=regtest --bin-dir=${RGB_BIN_DIR} --data-dir=${RGB_DATA_DIR} --electrum-server=${ELECTRS_HOST} --electrum-port=${ELECTRS_PORT}"

alias rgb01="docker-compose exec -T rgb1 rgb-cli -vvvv --network=regtest"
alias rgb02="docker-compose exec -T rgb2 rgb-cli -vvvv --network=regtest"

alias fungible1="docker-compose exec -T rgb1 rgb20 --network=regtest"
alias fungible2="docker-compose exec -T rgb2 rgb20 --network=regtest"

alias rgbstd1="docker-compose exec -T rgb1 rgb"
alias rgbstd2="docker-compose exec -T rgb2 rgb"

alias storm01="docker-compose exec storm1 storm-cli -vvvv --lnp=${LNP_IP_1}:${LNP_RPC_PORT}"
alias storm02="docker-compose exec storm2 storm-cli -vvvv --lnp=${LNP_IP_2}:${LNP_RPC_PORT}"

alias stormd1="docker-compose run --rm storm1 --network=regtest --data-dir=${STORM_DATA_DIR}"
alias stormd2="docker-compose run --rm storm2 --network=regtest --data-dir=${STORM_DATA_DIR}"