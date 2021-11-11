// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

//Here I am importing some Open Zep contracts.
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "hardhat/console.sol";

// The inherit the contract imported. This makes sure I have access
// to the inherited contract's methods.
contract mpaNFT is ERC721URIStorage {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;
    constructor() ERC721 ("MpaNFT", "MPA") {
        console.log("This is my NFT smart contract.");
    }

    function makeAnmpaNFT() public {
        uint256 newItemId = _tokenIds.current();

        _safeMint(msg.sender, newItemId);

        _setTokenURI(newItemId, "https://jsonkeeper.com/b/P2LC");

        console.log("An NFT w/ ID %s has been minted to %s", newItemId, msg.sender);

        _tokenIds.increment();
    }
}