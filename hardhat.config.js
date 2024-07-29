require("@nomicfoundation/hardhat-toolbox");

module.exports = {
  solidity: "0.8.19",
  networks: {
    swisstronik: {
      url: "https://json-rpc.testnet.swisstronik.com/",
      accounts: ["0xb2b39e3426503fbcc53dcfe61369c92dcf4dc4c30581f40bb0a185cb9343cf76"], //Your private key starting with "0x"
    },
  },
};
