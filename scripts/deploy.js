// required files 
const hre = require("hardhat");
//main file 
async function main() {
  const Contract = await hre.ethers.getContractFactory("TokenNest code ");
  const instance = await Contract.deploy();
  await instance.deployed();

  console.log("TokenNest deployed to:", instance.address);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});

