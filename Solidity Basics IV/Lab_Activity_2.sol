// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyFinalsActivity2 {
    address payable public owner;
    uint256 public creationTime;
    uint256 public constant INITIAL_ETH_AMOUNT = 2 ether;
    uint256 public remainingEth;

    event EtherReceived(address indexed sender, uint256 amount);
    event EtherSent(address indexed recipient, uint256 amount);

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call this function");
        _;
    }

    constructor() {
        owner = payable(msg.sender);
        creationTime = block.timestamp;
        remainingEth = INITIAL_ETH_AMOUNT;
    }

    receive() external payable {
        receiveAndEmit();
    }

    function receiveAndEmit() public payable {
        remainingEth += msg.value;
        emit EtherReceived(msg.sender, msg.value);
    }

    function sendEther(address payable _recipient, uint256 _amount)
        public
        payable
        onlyOwner
    {
        require(_amount <= remainingEth, "Insufficient balance");
        remainingEth -= _amount;
        _recipient.transfer(_amount);
        emit EtherSent(_recipient, _amount);
    }

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }

    function destroy() public onlyOwner {
        selfdestruct(owner);
    }
}

/* The "MyFinalsActivity2" contract controls Ether transactions with restricted access. It tracks incoming and outgoing Ether, 
allowing balance checks, Ether sending, and self-destruction for security and flexibility in Ethereum smart contracts. */
