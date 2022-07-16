// This will be the output of the "deploy" function.
const NFT_CONTRACT_ADDRESS = "0xc209DEE07407E1dc7851DdF12717b4B698044B97";

const deploy = async () => {
  const nftContractFactory = await hre.ethers.getContractFactory('MyNFT');
  const nftContract = await nftContractFactory.deploy();
  await nftContract.deployed();
  console.log("Contract deployed to:", nftContract.address);
};

const mint = async () => {
  const nftContractFactory = await hre.ethers.getContractFactory('MyNFT');
  const nftContract = await nftContractFactory.attach(NFT_CONTRACT_ADDRESS);
  let txn = await nftContract.mintNFT()
  await txn.wait()
  console.log("Minted NFT")
}

const runDeploy = async () => {
  try {
    await deploy();
    process.exit(0);
  } catch (error) {
    console.log(error);
    process.exit(1);
  }
};

const runMint = async () => {
  try {
    await mint();
    process.exit(0);
  } catch (error) {
    console.log(error);
    process.exit(1);
  }
};

runMint();