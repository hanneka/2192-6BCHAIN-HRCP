// SPDX-License-Identifier: MIT
// Hanneka Rose Puri
pragma solidity ^0.8.0;

contract FallbackExample{
    event FallbackReceived(address sender, uint amount);
    event PaymentReceived(address payer, uint256 amount);

    fallback() external payable {
        emit FallbackReceived(msg.sender, msg.value);
     }

     receive() external payable {
        emit PaymentReceived(msg.sender, msg.value);
      }
}

/* The "FallbackExample" contract has special functions to handle when people send money. 
These functions keep track of who sends the money and how much they send. This helps the contract 
manage payments better and makes it clear what's happening with the money. */