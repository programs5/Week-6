pragma solidity ^0.4.22;

import "openzeppelin-solidity/contracts/token/ERC721/ERC721Token.sol";

//import "openzeppelin-solidity/contracts/token/ERC721/ERC721.sol";
//import "openzeppelin-solidity/contracts/token/ERC721/ERC721Basic.sol";
//import "openzeppelin-solidity/contracts/token/ERC721/ERC721Receiver.sol";
//import "openzeppelin-solidity/contracts/token/ERC721/ERC721BasicToken.sol";
//import "openzeppelin-solidity/contracts/contracts/AddressUtils.sol";
//import "openzeppelin-solidity/contracts/math/SafeMath.sol";
// ++++++++++++++++++
// ERC721Receiver.sol
// ERC721Token.sol --> (ERC721.sol | ERC721BasicToken.sol) --> ERC721Basic.sol

contract Ticket is ERC721Token {

    uint price = 10 finney;
    address owner = 0x937febbc45628f1bb2445f3c569b6b5ff05fed9a;

    constructor(string _name, string _symbol)
        ERC721Token(_name, _symbol) public {
    }

    // createNewToken
    function createNewToken(string _data) public payable {

        require(msg.value == price);

        uint tokenId = uint(sha3(_data));
        require(!exists(tokenId));
        _mint(msg.sender, tokenId);
        address(owner).transfer(msg.value);
    }
}
