// SPDX-License-Identifier: MIT
// Hanneka Rose C. Puri
pragma solidity ^0.8.7; 

contract Localvariables {
    uint public i;
    bool public b;
    address public myAddress;

    function foo() external {
        uint x = 123;
        bool f = false;
        x  += 456;
        f = true;

        i = 123;
        b = true;
        myAddress =  address(1);
    }
 
  }

  //Insights: When I deployed the project the unit of i was automatically became unit256:0
  // In addition whenever i run the foo the variable b,i and myAddress will be updated. While for the bool it became bool:false. 