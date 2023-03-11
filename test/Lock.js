
const { expect } = require("chai");


  describe("Deployment", function () {
    it("deploy contract", async function () {
      const [owner,no1,no2]= await ethers.getSigners();

      const Contract= await ethers.getContractFactory("drive3");
      const contract= await Contract.deploy();
      console.log(contract.address);

    })
  })