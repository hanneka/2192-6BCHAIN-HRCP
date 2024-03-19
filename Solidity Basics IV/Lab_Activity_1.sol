// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract EtherWallet {
    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
    }

    receive() external payable {}

    function withdraw(uint256 amount) public {
        require(msg.sender == owner, "Only owner can withdraw");
        require(address(this).balance >= amount, "Insufficient balance");
        owner.transfer(amount);
    }

    function getBalance() external view returns (uint256) {
        return address(this).balance;
    }
}

/* The Solidity code has an "EtherWallet" contract. It lets people put money in and take it out. At first, 
the person who made the contract owns it. People can add money using a function called "receive". But only the owner can take money out. 
There's also a way to check how much money is in the wallet. This contract helps manage money safely and is important for making Ethereum 
contracts secure and work well. */