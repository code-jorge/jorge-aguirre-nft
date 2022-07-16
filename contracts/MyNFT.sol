// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.1;
// We need some util functions for strings.
import "@openzeppelin/contracts/utils/Strings.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/utils/Base64.sol";
import "hardhat/console.sol";


contract MyNFT is ERC721URIStorage, Ownable {
  using Counters for Counters.Counter;
  Counters.Counter private _tokenIds;


  constructor() ERC721 ("Jorge Aguirre NFT", "JORGE") {
    console.log("This is my NFT. Yeah!");
  }

  function mintNFT() public onlyOwner {

    uint256 newItemId = _tokenIds.current();

    if (newItemId > 0) {
      console.log("Already minted the main NFT");
      return;
    }

    _safeMint(msg.sender, newItemId);
  
    // We'll be setting the tokenURI later!
    _setTokenURI(newItemId, "https://jorge.aguirre.sexy/nft/profile.json");
  
    _tokenIds.increment();
    console.log("An NFT w/ ID %s has been minted to %s", newItemId, msg.sender);
  }
}