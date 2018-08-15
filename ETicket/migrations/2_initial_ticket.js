const Ticket = artifacts.require("Ticket.sol");

module.exports = function(deployer, network) {
  deployer.deploy(Ticket, "My_Ticket_ERC721", "Ticket721");
};
