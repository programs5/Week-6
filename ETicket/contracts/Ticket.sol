pragma solidity ^0.4.24;

import "openzeppelin-solidity/contracts/token/ERC721/ERC721Token.sol";

contract Ticket is ERC721Token  {

    uint constant price = 10 finney;
    address[] addrBuyToken;
    address owner;

    //
    constructor(string _name, string _symbol) ERC721Token(_name, _symbol) public {
      owner = msg.sender;
    }

    //
    function createNewToken(string _data) public payable {
        require(msg.value == price);

        uint tokenId = uint(keccak256(abi.encodePacked(_data)));

        require(!exists(tokenId));
        super._mint(msg.sender, tokenId);
        address(owner).transfer(msg.value);

        // сохраняем все адреса токенов
        addrBuyToken.push(msg.sender);
    }

    //
   function getCountToken() public view returns (uint) {
        uint totalValue = 0;

        for (uint i=0; i < addrBuyToken.length; i++) {
            if(addrBuyToken[i] == msg.sender) {
                totalValue += 1;
            }
        }
        return totalValue;
   }
}
