pragma solidity ^0.8.0;

contract FriendshipNFT {
    string public name = "FriendshipNFT";
    string public symbol = "FRND";
    uint256 private _tokenIdCounter;
    mapping(uint256 => address) public ownerOf;
    mapping(uint256 => string) public tokenURI;

    function mintNFT(string memory _tokenURI) public {
        uint256 newTokenId = _tokenIdCounter;
        ownerOf[newTokenId] = msg.sender;
        tokenURI[newTokenId] = _tokenURI;
        _tokenIdCounter++;
    }
}
