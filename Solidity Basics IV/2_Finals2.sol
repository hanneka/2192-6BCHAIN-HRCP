// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract SendEther {
    constructor() payable {}

    receive() external payable { }

    function sendViaTransfer (address payable _to) external payable {
    _to. transfer (100);
    }

    function sendViaSend (address payable _to) external payable {
        bool sent = _to.send(100);
        require(sent, "Sending failed.");
    }

    function sendViaCall (address payable _to) external payable {
        (bool success, ) = _to.call{value: 100}("");
        require(success, "Call failed.");
    }
}

contract SelfDestruct {
    event Deposit (uint amount);
    event Withdraw(uint amount);
    address public owner = msg.sender;

    receive() external payable {
        emit Deposit(msg.value);
    }

    function withdraw() external {
        require(msg.sender == owner, "Not owner!");
        emit Withdraw(address(this).balance);
        selfdestruct(payable(msg.sender));
    }
}

/* The Solidity code has two parts. First part, called "SendEther," lets you send and get Ether using different ways. 
It has functions like sendViaTransfer, sendViaSend, and sendViaCall, which show different ways to move Ether. 
The other part, called "SelfDestruct," lets the owner of the contract destroy it. When this happens, the money in the 
contract goes to the owner, and the contract stops working. */
