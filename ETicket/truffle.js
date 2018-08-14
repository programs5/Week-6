var HDWalletProvider = require("truffle-hdwallet-provider");

 module.exports = {
   networks: {

     development: {
       host: "localhost",
       port: 8545,
       network_id: "*"
     },

     rinkeby: {
       provider: function() {
         return new HDWalletProvider("recycle series vicious exercise slim keep tool north voice detail length carbon",
            "https://rinkeby.infura.io/kp7Z0DFPGq7d3S2lIKEz")
      },
      from: "0x937febbc45628f1bb2445f3c569b6b5ff05fed9a",
      network_id: 4
     }
   },

   solc: {
     optimizer: {
       enabled: true,
       runs: 200
     }
 }
 };
