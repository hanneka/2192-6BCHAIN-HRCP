// SPDX-License-Identifier: MIT
// Hanneka Rose C. Puri
pragma solidity ^0.8.7; 

contract GlobalVariables {
  function globalVars() external view returns (address, uint, uint, uint, bytes4) {
        address sender = msg.sender;
        uint timestamp = block.timestamp;
        uint blockNum = block.number;
        uint blockGas = block.gaslimit;
        bytes4 mSig = msg.sig;
        return (sender, timestamp, blockNum, blockGas, mSig);
    }
  }

//insights: When you deploy then call the globalVars it will show the decoded output and also the timestamp will change whenever you call it.
// In addition when you add a global variable you first need to determine the type off the variable then call the type in external view returns
