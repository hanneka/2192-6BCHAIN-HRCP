// SPDX-License-Identifier: MIT
// Hanneka Rose C. Puri
pragma solidity ^0.8.20; 

contract ValueTypes {
  bool public b = true;
  uint public u = 123;  //uint = uint256 0 to 2**256 - 1
                        //uint = uint8 0 to 2**256 - 1

  int public i = 123;

  int public minInt = type(int).min;
  int public maxInt = type(int).max;
  address public addr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
  bytes32 public b32 = 0x89c58ced8a9078bdef2bb60f22e58eeff7dbfed6c2dff3e7c508b629295926fa;
  }
