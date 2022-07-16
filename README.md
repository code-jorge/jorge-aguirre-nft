## Jorge Aguirre NFT

### Environment Variables

You will need to set the following environment variables (requires a Polygon Scan account, a Wallet 
and an Alchemy account):

```
  ACCOUNT_PRIVATE_KEY=
  MUMBAI_POLYGON_ALCHEMY_API_KEY=
  POLYGON_ALCHEMY_API_KEY=
  POLYGON_SCAN_API_KEY=
```

### Scripts

- The script `run.js` is for testing (although it can be used for real) - it contains each function call 
separately (deploy + mint) and they cannot be run together. Change the last line to decide the operation 
you want to perform. Also, update the `NFT_CONTRACT_ADDRESS` to the value that suits you.

- The script `process.js` is intended for production - it will do both operations in one go.

To run them:

**Testnet**: `npx hardhat run scripts/process.js --network mumbai`

**Mainnet**: `npx hardhat run scripts/process.js --network polygon`

### Deployment

Deploying to the **Polygon Mumbai Testnet** produced this address `0xc209DEE07407E1dc7851DdF12717b4B698044B97`.

Deploying to the **Polygon Mainnet** produced this address `0x8b534754a17d48753966f4bEf3BF2c661B46F5c5`.

After minting (Mumbai): [NFT in OpenSea](https://opensea.io/assets/matic/0xc209DEE07407E1dc7851DdF12717b4B698044B97/0)

After minting (Polygon): [NFT in OpenSea](https://opensea.io/assets/matic/0x8b534754a17d48753966f4bef3bf2c661b46f5c5/0)