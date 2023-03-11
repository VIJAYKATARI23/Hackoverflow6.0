require("@nomicfoundation/hardhat-toolbox");

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.18",
  networks:{
    hardhat:{
      chainid:1337,
    },
  },
  paths:{
    artifacts:"./clint/src/artifacts",
  }
};
