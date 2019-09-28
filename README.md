# ElectionDapp
This is a implementation of a tutorial to build an election dapp on a local blockchain using ganache and a UI to interact with the smart contract.
  -Source: http://www.dappuniversity.com/articles/the-ultimate-ethereum-dapp-tutorial


  Tutorial Notes:
    -prepend version of pragma solidity line with ">="
    -Constructor function deprecated, use "constructor()"   rather than "function ContractName()"
    -Must add data location for string function variables, "memory" to store temporary values and "storage" to store persistent contract state variables
    -Must add "localhost" to metamask connections for browser to be able to get account public key
    -Must add "emit" before calling event in Election contract

  To Run:
    Open ganache
    Open chrome and login to metamask
    truffle migrate --reset
    npm run dev


