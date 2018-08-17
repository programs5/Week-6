require('babel-register');
require('babel-polyfill');

var HDWalletProvider = require("truffle-hdwallet-provider");

module.exports = {
  networks: {

    development: {
      host: "127.0.0.1",
      port: 8545,
      network_id: "2"
      , from: "0x5b853a724f6ac37e7a27d90a7c8f71db4b38fbd7"
    },

    rinkeby: {
      provider: function() {
        return new HDWalletProvider("recycle series vicious exercise slim keep tool north voice detail length carbon", "https://rinkeby.infura.io/kp7Z0DFPGq7d3S2lIKEz")
     },
     from: "0x937febbc45628f1bb2445f3c569b6b5ff05fed9a",
     network_id: 4
    },

    mainnet: {
      host: "localhost",
      port: 8549,
      network_id: 1,
      gasPrice: 10 * 1e9
    }
  },

  solc: {
    optimizer: {
      enabled: true,
      runs: 200
    }
}
};
