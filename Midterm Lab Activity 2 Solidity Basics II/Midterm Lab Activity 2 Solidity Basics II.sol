// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Ownable {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function");
        _;
    }

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    function transferOwnership(address newOwner) public onlyOwner {
        require(newOwner != address(0), "Invalid Address");
        emit OwnershipTransferred(owner, newOwner);
        owner = newOwner;
    }
}

contract MyContract is Ownable{
    uint256 public someValue;
    mapping(address => uint256) public valueMapping;

    function setValue(uint256 newValue) public onlyOwner {
    valueMapping[msg.sender] = newValue;

    }
}