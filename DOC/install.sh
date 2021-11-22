#!/bin/bash

https://cointool.app/dashboard
https://faucet.rinkeby.io/
#place your key in tweet and copy link... paste link in faucet.rinkeby https://twitter.com/roboticindustry/status/1462498592577531913?s=20
https://mint.club/

mkdir ozicoin-main 
cd ozicoin-main

node --version 16
#yarn global add truffle --prefix /usr/local
mkdir myproject && cd myproject
npm init -y
npm i truffle
npx truffle init
npm install @openzeppelin/contracts
npm install --save-dev @truffle/hdwallet-provider

npm install --save  @openzeppelin/contracts truffle @nomiclabs/hardhat-etherscan @truffle/hdwallet-provider truffle-contract-size
touch Ozicoin.sol #folder contracts

#create account https://infura.io/
#create ethereun Ozicoin... place networkkovan and copy link  endpoint

#open metamask and place your link endpoint and your publil testnet key
# go to  and take value to transaction https://ethgasstation.info/
#afe value is 2 + 000000000 standard is 3 fast is 6

#create 2_deploy.js in migration folder

#npx truffle migrate --network rinkeby

#npx truffle deploy --network mainnet --reset --compile-none
npx truffle compile
npx truffle deploy --network mainnet --compile-none 
#npx truffle migrate --network mainnet

copy contract id contract address:    0xD4985098EE198049498dfb3eBbDCad73d5F8F44D

https://rinkeby.etherscan.io/

copy contract creator https://rinkeby.etherscan.io/address/0x58f73dd6fae3617953bf9a9c3290d880d8167509

#npm install truffle-contract-size
#Add the plugin to the truffle-config.js: plugins: ["truffle-contract-size"]
#npx truffle run contract-size