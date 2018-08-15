pragma solidity ^0.4.24;

import "openzeppelin-solidity/contracts/token/ERC721/ERC721Token.sol";

contract Ticket is ERC721Token  {

    uint price = 10 finney;

    address owner = 0x937fEbBc45628F1bB2445f3c569B6b5FF05FED9A;

    //
    constructor(string _name, string _symbol)
      ERC721Token(_name, _symbol) public {}

    //
    function createNewToken(string _data) public payable {
        require(msg.value == price);

        uint tokenId = uint(keccak256(abi.encodePacked(_data)));

        require(!exists(tokenId));
        super._mint(msg.sender, tokenId);
        address(owner).transfer(msg.value);
    }
}
